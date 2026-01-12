import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../l10n/app_localizations.dart';
import '../../models/reminder.dart';
import '../../widgets/reminder_card.dart';
import '../../services/notification_service.dart';
import '../../services/alarm_monitor_service.dart';
import 'add_reminder_screen.dart';
import 'notification_screen.dart';

class MedicineReminderScreen extends StatefulWidget {
  const MedicineReminderScreen({Key? key}) : super(key: key);

  @override
  State<MedicineReminderScreen> createState() => _MedicineReminderScreenState();
}

class _MedicineReminderScreenState extends State<MedicineReminderScreen> {
  List<Reminder> reminders = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadReminders();
  }

  // Load reminders from SharedPreferences
  Future<void> _loadReminders() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final remindersJson = prefs.getString('reminders');

      if (remindersJson != null) {
        final List<dynamic> decodedList = json.decode(remindersJson);
        setState(() {
          reminders = decodedList.map((item) => Reminder.fromJson(item)).toList();
          _isLoading = false;
        });

        // Cache all reminders for notification navigation
        for (final reminder in reminders) {
          NotificationService().cacheReminder(reminder.id, reminder);
        }

        // Update alarm monitor with loaded reminders
        AlarmMonitorService().updateReminders(reminders);
        print('✅ Loaded ${reminders.length} reminders from storage');
      } else {
        setState(() {
          _isLoading = false;
        });
        print('ℹ️ No saved reminders found');
      }
    } catch (e) {
      print('⚠️ Error loading reminders: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Save reminders to SharedPreferences
  Future<void> _saveReminders() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final remindersJson = json.encode(reminders.map((r) => r.toJson()).toList());
      await prefs.setString('reminders', remindersJson);
      print('✅ Saved ${reminders.length} reminders to storage');
    } catch (e) {
      print('⚠️ Error saving reminders: $e');
    }
  }

  List<String> _buildDoseLabels(AppLocalizations l10n, int count) {
    switch (count) {
      case 2:
        return [l10n.reminderDoseMorning, l10n.reminderDoseEvening];
      case 3:
        return [
          l10n.reminderDoseMorning,
          l10n.reminderDoseNoon,
          l10n.reminderDoseEvening,
        ];
      case 4:
        return [
          l10n.reminderDoseMorning,
          l10n.reminderDoseNoon,
          l10n.reminderDoseEvening,
          l10n.reminderDoseNight,
        ];
      default:
        return List<String>.filled(count, '');
    }
  }

  void _addReminder(Reminder reminder) async {
    setState(() {
      reminders.add(reminder);
    });

    // Save to persistent storage
    await _saveReminders();

    if (!mounted) return;
    final l10n = AppLocalizations.of(context)!;
    final doseLabels = _buildDoseLabels(l10n, reminder.doseTimes.length);
    final notificationBodies = List<String>.generate(
      reminder.doseTimes.length,
      (index) => l10n.reminderNotificationBody(index + 1),
    );

    // Cache reminder for notification navigation
    NotificationService().cacheReminder(reminder.id, reminder);

    await NotificationService().scheduleReminderDoses(
      reminderId: reminder.id,
      medicineName: reminder.medicineName,
      doseTimes: reminder.doseTimes,
      repeatType: reminder.repeatType,
      notificationChannelName: l10n.reminderNotificationChannelName,
      notificationChannelDescription:
          l10n.reminderNotificationChannelDescription,
      doseLabels: doseLabels,
      notificationBodies: notificationBodies,
    );

    // Update alarm monitor with new reminder
    AlarmMonitorService().updateReminders(reminders);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.reminderAddedMessage),
          duration: const Duration(seconds: 2),
          backgroundColor: const Color(0xFF4CAF50),
        ),
      );
    }
  }

  void _updateReminder(Reminder updatedReminder) async {
    final index = reminders.indexWhere((r) => r.id == updatedReminder.id);
    if (index != -1) {
      final oldReminder = reminders[index];

      setState(() {
        reminders[index] = updatedReminder;
      });

      // Save to persistent storage
      await _saveReminders();

      await NotificationService().cancelReminderNotifications(
        oldReminder.id,
        oldReminder.dosesPerDay,
      );

      // Clear permanent trigger when editing (allows it to trigger again)
      await AlarmMonitorService().clearPermanentTrigger(updatedReminder.id);

      final l10n = AppLocalizations.of(context)!;
      final doseLabels = _buildDoseLabels(
        l10n,
        updatedReminder.doseTimes.length,
      );
      final notificationBodies = List<String>.generate(
        updatedReminder.doseTimes.length,
        (index) => l10n.reminderNotificationBody(index + 1),
      );

      // Cache updated reminder for notification navigation
      NotificationService().cacheReminder(updatedReminder.id, updatedReminder);

      await NotificationService().scheduleReminderDoses(
        reminderId: updatedReminder.id,
        medicineName: updatedReminder.medicineName,
        doseTimes: updatedReminder.doseTimes,
        repeatType: updatedReminder.repeatType,
        notificationChannelName: l10n.reminderNotificationChannelName,
        notificationChannelDescription:
            l10n.reminderNotificationChannelDescription,
        doseLabels: doseLabels,
        notificationBodies: notificationBodies,
      );

      // Update alarm monitor with updated reminders
      AlarmMonitorService().updateReminders(reminders);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.reminderUpdatedMessage),
            duration: Duration(seconds: 2),
            backgroundColor: Color(0xFF4CAF50),
          ),
        );
      }
    }
  }

  void _deleteReminder(String id) async {
    final reminder = reminders.firstWhere((r) => r.id == id);

    setState(() {
      reminders.removeWhere((reminder) => reminder.id == id);
    });

    // Save to persistent storage
    await _saveReminders();

    await NotificationService().cancelReminderNotifications(
      id,
      reminder.dosesPerDay,
    );

    // Clear permanent trigger if it was 'never' mode
    await AlarmMonitorService().clearPermanentTrigger(id);

    // Update alarm monitor after deletion
    AlarmMonitorService().updateReminders(reminders);
  }

  void _toggleReminder(String id) async {
    setState(() {
      final index = reminders.indexWhere((reminder) => reminder.id == id);
      if (index != -1) {
        reminders[index].isEnabled = !reminders[index].isEnabled;
      }
    });

    // Save to persistent storage
    await _saveReminders();

    // Update alarm monitor when reminder is toggled
    AlarmMonitorService().updateReminders(reminders);
  }

  void _editReminder(Reminder reminder) async {
    final updatedReminder = await Navigator.push<Reminder>(
      context,
      MaterialPageRoute(
        builder: (context) => AddReminderScreen(existingReminder: reminder),
      ),
    );
    if (updatedReminder != null) {
      _updateReminder(updatedReminder);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.medicineReminderTitle,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Color(0xFFE8F5E9), Color(0xFFC8E6C9)],
        //   ),
        // ),
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : reminders.isEmpty ? _buildEmptyState() : _buildReminderList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newReminder = await Navigator.push<Reminder>(
            context,
            MaterialPageRoute(
              builder: (context) => const AddReminderScreen(),
            ),
          );
          if (newReminder != null) {
            _addReminder(newReminder);
          }
        },
        backgroundColor: const Color(0xFF2E7D32),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, size: 32, color: Colors.white),
      ),
    );
  }

  Widget _buildEmptyState() {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFF6B9D), Color(0xFFFF9A56)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.medication, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 24),
          Text(
            l10n.reminderEmptyTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.reminderEmptySubtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  // Trigger alarm for a specific reminder (for testing)
  void _triggerAlarmForReminder(Reminder reminder) {
    // Cache reminder
    NotificationService().cacheReminder(reminder.id, reminder);
    // Play alarm sound
    NotificationService().playAlarm();
    // Navigate to notification screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotificationScreen(reminder: reminder),
        fullscreenDialog: true,
      ),
    );
  }

  Widget _buildReminderList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: reminders.length,
      itemBuilder: (context, index) {
        return ReminderCard(
          reminder: reminders[index],
          onToggle: () => _toggleReminder(reminders[index].id),
          onDelete: () => _deleteReminder(reminders[index].id),
          onEdit: () => _editReminder(reminders[index]),
          onAlarm: () => _triggerAlarmForReminder(reminders[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NotificationScreen(reminder: reminders[index]),
              ),
            );
          },
        );
      },
    );
  }
}
