# Alarm Implementation for MediNavi

## How Alarms Work on iOS

### Background Execution Limitations
iOS does not allow apps to run arbitrary code (like timers) in the background when the screen is locked. This is by design for battery preservation and security.

### Solution: Local Notifications
The alarm system uses **local scheduled notifications** which work even when:
- Screen is locked
- App is closed
- Device is in Do Not Disturb mode (with proper permissions)

## Implementation Details

### 1. BackgroundAlarmService
Located at: `lib/services/background_alarm_service.dart`

This service schedules local notifications for each reminder dose time:
- **For daily reminders**: Uses `scheduleDailyNotification()` which repeats every day
- **For one-time reminders**: Uses `scheduleNotification()` for next occurrence

### 2. NotificationService
Located at: `lib/services/notification_service.dart`

Handles notification configuration:
- **iOS**: `DarwinNotificationDetails` with `sound: 'default'` and `interruptionLevel: timeSensitive`
- **Android**: Full-screen intent with max priority and vibration
- **Audio playback**: When user taps notification, alarm sound plays in a loop

### 3. How It Works

1. **User sets reminder** → `BackgroundAlarmService.scheduleAllReminders()` is called
2. **System schedules notifications** → iOS/Android system takes over
3. **Notification time arrives** → System delivers notification with sound
4. **Notification sound plays automatically** → Even if screen is locked!
5. **User taps notification** → App opens, continuous alarm plays, shows NotificationScreen
6. **User dismisses alarm** → Audio stops

## Testing

### Test on Physical Device
1. Set a reminder for 2 minutes from now
2. Lock your iPhone screen
3. Wait for the reminder time
4. **Expected behavior**:
   - Notification appears on lock screen
   - Default notification sound plays automatically
   - Banner shows medicine name and dose information
5. Tap the notification
6. App opens and continuous alarm sound plays until dismissed

### Important Notes
- The notification sound plays **automatically** when the notification fires (even when locked)
- The continuous alarm loop only starts **after tapping** the notification
- This is the standard iOS behavior - apps cannot force themselves to open without user interaction

## iOS Configuration

### Info.plist Settings
```xml
<key>UIBackgroundModes</key>
<array>
    <string>audio</string>
    <string>fetch</string>
    <string>remote-notification</string>
</array>
```

### Permissions Required
- Alert permission (shows notification)
- Sound permission (plays notification sound)
- Badge permission (shows badge on app icon)

These are requested in `NotificationService.requestPermissions()`

## Migration from AlarmMonitorService

The old `AlarmMonitorService` used a `Timer.periodic()` approach which doesn't work on iOS when the screen is locked. The new `BackgroundAlarmService` properly uses the iOS notification system.

### What Changed
- ❌ **Old**: Timer checks every second → Doesn't work when locked
- ✅ **New**: System scheduled notifications → Works even when locked

### Files Modified
- `lib/services/background_alarm_service.dart` - NEW
- `lib/services/notification_service.dart` - Enhanced with background handling
- `lib/screens/reminder/medicine_reminder_screen.dart` - Uses BackgroundAlarmService
- `ios/Runner/Info.plist` - Added UIBackgroundModes

## Troubleshooting

### Notification doesn't appear on lock screen
- Check Settings → Notifications → MediNavi
- Ensure "Lock Screen" is enabled
- Ensure "Sounds" is enabled

### No sound plays
- Check device volume
- Check "Sounds" permission in app settings
- Ensure device is not in Silent mode (notifications should play even in silent mode with proper setup)

### Want louder/custom alarm sound
- iOS notification sounds are system-controlled
- For custom sounds, add `.aiff` or `.caf` file to iOS project
- Update `sound: 'custom_sound.aiff'` in DarwinNotificationDetails
