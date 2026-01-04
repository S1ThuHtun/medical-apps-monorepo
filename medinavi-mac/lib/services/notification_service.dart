import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart'
    as tzdata;
import 'package:timezone/timezone.dart'
    as tz;

class NotificationService {
  static final NotificationService
      _instance =
      NotificationService._();
  factory NotificationService() =>
      _instance;
  NotificationService._();

  final FlutterLocalNotificationsPlugin
      _notifications =
      FlutterLocalNotificationsPlugin();
  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;

    tzdata.initializeTimeZones();
    tz.setLocalLocation(
        tz.getLocation('Asia/Tokyo'));

    const androidSettings =
        AndroidInitializationSettings(
            '@mipmap/ic_launcher');
    const iosSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const initSettings =
        InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse:
          _onNotificationTap,
    );

    _initialized = true;
  }

  void _onNotificationTap(
      NotificationResponse response) {
    print(
        'Notification tapped: ${response.payload}');
  }

  Future<bool>
      requestPermissions() async {
    final android = _notifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    if (android != null) {
      final granted = await android
          .requestNotificationsPermission();
      return granted ?? false;
    }

    final iOS = _notifications
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>();

    if (iOS != null) {
      final granted =
          await iOS.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
      return granted ?? false;
    }

    return true;
  }

  Future<void> scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledTime,
    String? payload,
    String channelName = 'Medicine Reminder',
    String channelDescription = 'Reminds you to take your medicine',
  }) async {
    await _notifications.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(
          scheduledTime, tz.local),
      NotificationDetails(
        android:
            AndroidNotificationDetails(
          'pill_reminder_channel',
          channelName,
          channelDescription: channelDescription,
          importance: Importance.high,
          priority: Priority.high,
          showWhen: true,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: payload,
      androidScheduleMode:
          AndroidScheduleMode
              .exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation
              .absoluteTime,
    );
  }

  Future<void>
      scheduleDailyNotification({
    required int id,
    required String title,
    required String body,
    required int hour,
    required int minute,
    String? payload,
    String channelName = 'Medicine Reminder',
    String channelDescription = 'Reminds you to take your medicine',
  }) async {
    await _notifications.zonedSchedule(
      id,
      title,
      body,
      _nextInstanceOfTime(hour, minute),
      NotificationDetails(
        android:
            AndroidNotificationDetails(
          'pill_reminder_channel',
          channelName,
          channelDescription: channelDescription,
          importance: Importance.high,
          priority: Priority.high,
          showWhen: true,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: payload,
      androidScheduleMode:
          AndroidScheduleMode
              .exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation
              .absoluteTime,
      matchDateTimeComponents:
          DateTimeComponents.time,
    );
  }

  tz.TZDateTime _nextInstanceOfTime(
      int hour, int minute) {
    final now =
        tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate
          .add(const Duration(days: 1));
    }

    return scheduledDate;
  }

  Future<void> scheduleReminderDoses({
    required String reminderId,
    required String medicineName,
    required List<String> doseTimes,
    required String repeatType,
    required String notificationChannelName,
    required String notificationChannelDescription,
    required List<String> doseLabels,
    required List<String> notificationBodies,
  }) async {
    for (int i = 0;
        i < doseTimes.length;
        i++) {
      final time = doseTimes[i];
      final parts = time.split(':');
      final hour = int.parse(parts[0]);
      final minute =
          int.parse(parts[1]);

      final notificationId =
          '${reminderId}_$i'.hashCode;
      final doseLabel =
          i < doseLabels.length ? doseLabels[i] : '';

      final title = doseLabel.isNotEmpty
          ? '$medicineName ($doseLabel)'
          : medicineName;
      final body = i < notificationBodies.length
          ? notificationBodies[i]
          : '';

      if (repeatType == 'everyday') {
        await scheduleDailyNotification(
          id: notificationId,
          title: title,
          body: body,
          hour: hour,
          minute: minute,
          payload: '$reminderId|$i',
          channelName: notificationChannelName,
          channelDescription: notificationChannelDescription,
        );
      } else {
        final scheduledTime =
            _nextInstanceOfTime(
                    hour, minute)
                .toLocal();
        await scheduleNotification(
          id: notificationId,
          title: title,
          body: body,
          scheduledTime: scheduledTime,
          payload: '$reminderId|$i',
          channelName: notificationChannelName,
          channelDescription: notificationChannelDescription,
        );
      }
    }
  }

  Future<void> cancelDoseNotification(
      String reminderId,
      int doseIndex) async {
    final notificationId =
        '${reminderId}_$doseIndex'
            .hashCode;
    await _notifications
        .cancel(notificationId);
  }

  Future<void>
      cancelReminderNotifications(
          String reminderId,
          int dosesCount) async {
    for (int i = 0;
        i < dosesCount;
        i++) {
      await cancelDoseNotification(
          reminderId, i);
    }
  }

  Future<void> cancelAll() async {
    await _notifications.cancelAll();
  }

  Future<List<PendingNotificationRequest>>
      getPendingNotifications() async {
    return await _notifications
        .pendingNotificationRequests();
  }
}
