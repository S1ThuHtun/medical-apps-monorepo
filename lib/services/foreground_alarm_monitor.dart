import 'dart:async';
import 'package:flutter/material.dart';
import '../models/reminder.dart';
import '../main.dart';
import '../screens/reminder/notification_screen.dart';
import 'notification_service.dart';

/// Monitors reminders and auto-triggers alarm screen when app is in foreground
/// This complements BackgroundAlarmService which handles background notifications
class ForegroundAlarmMonitor {
  static final ForegroundAlarmMonitor _instance = ForegroundAlarmMonitor._();
  factory ForegroundAlarmMonitor() => _instance;
  ForegroundAlarmMonitor._();

  Timer? _timer;
  List<Reminder> _reminders = [];
  final Set<String> _triggeredToday = {}; // Track which reminders fired today
  DateTime? _lastCheckDate;

  /// Start monitoring reminders (call when app starts)
  void startMonitoring(List<Reminder> reminders) {
    _reminders = reminders.where((r) => r.isEnabled).toList();
    _resetTriggersIfNewDay();
    
    // Stop existing timer if any
    _timer?.cancel();
    
    // Check every second for matching reminder times
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _checkReminders();
    });
    
    print('🔔 Foreground alarm monitor started with ${_reminders.length} reminders');
  }

  /// Update reminders list (call when reminders change)
  void updateReminders(List<Reminder> reminders) {
    _reminders = reminders.where((r) => r.isEnabled).toList();
    print('🔄 Updated foreground monitor with ${_reminders.length} reminders');
  }

  /// Stop monitoring (call when app closes)
  void stopMonitoring() {
    _timer?.cancel();
    _timer = null;
    print('🛑 Foreground alarm monitor stopped');
  }

  /// Reset triggered reminders at start of new day
  void _resetTriggersIfNewDay() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    
    if (_lastCheckDate == null || !_isSameDay(_lastCheckDate!, today)) {
      _triggeredToday.clear();
      _lastCheckDate = today;
      print('📅 New day detected - reset triggered reminders');
    }
  }

  bool _isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  void _checkReminders() {
    _resetTriggersIfNewDay();
    
    final now = DateTime.now();
    final currentTime = '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    
    for (final reminder in _reminders) {
      // Check each dose time
      for (int i = 0; i < reminder.doseTimes.length; i++) {
        final doseTime = reminder.doseTimes[i];
        final triggerId = '${reminder.id}_$i';
        
        // Check if this dose time matches current time
        if (doseTime == currentTime && !_triggeredToday.contains(triggerId)) {
          // Check if this reminder should trigger today based on repeat type
          if (_shouldTriggerToday(reminder, now)) {
            _triggerAlarm(reminder, i);
            _triggeredToday.add(triggerId);
            print('✅ Triggered alarm for ${reminder.medicineName} at $doseTime');
          }
        }
      }
    }
  }

  bool _shouldTriggerToday(Reminder reminder, DateTime now) {
    switch (reminder.repeatType) {
      case 'everyday':
        return true;
      
      case 'weekdays':
        // Monday = 1, Friday = 5
        return now.weekday >= 1 && now.weekday <= 5;
      
      case 'weekends':
        // Saturday = 6, Sunday = 7
        return now.weekday == 6 || now.weekday == 7;
      
      case 'custom':
        if (reminder.customDays == null || reminder.customDays!.isEmpty) {
          return false;
        }
        // customDays: 0=Monday, 1=Tuesday, ..., 6=Sunday
        // DateTime.weekday: 1=Monday, 2=Tuesday, ..., 7=Sunday
        final todayIndex = now.weekday - 1;
        return reminder.customDays!.contains(todayIndex);
      
      case 'never':
      default:
        // For 'never' repeat, only trigger once (first time)
        return true;
    }
  }

  void _triggerAlarm(Reminder reminder, int doseIndex) {
    // Cache reminder for notification
    NotificationService().cacheReminder(reminder.id, reminder);
    
    // Play alarm sound
    NotificationService().playAlarm();
    
    // Navigate to notification screen
    final context = navigatorKey.currentContext;
    if (context != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => NotificationScreen(reminder: reminder),
          fullscreenDialog: true,
        ),
      );
      print('📱 Opened notification screen for ${reminder.medicineName}');
    } else {
      print('⚠️ Cannot open notification screen - no context available');
    }
  }

  /// Clear a specific reminder trigger (useful when editing reminders)
  void clearTrigger(String reminderId) {
    _triggeredToday.removeWhere((id) => id.startsWith(reminderId));
    print('🔄 Cleared triggers for reminder: $reminderId');
  }

  /// Clear all triggers (useful for testing)
  void clearAllTriggers() {
    _triggeredToday.clear();
    print('🔄 Cleared all triggers');
  }
}
