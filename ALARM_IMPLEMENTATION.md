# Alarm Implementation for MediNavi

## Hybrid Approach: Best of Both Worlds

MediNavi now uses a **hybrid alarm system** that combines:
1. **System Notifications** - Works when app is closed or screen is locked
2. **Foreground Monitor** - Auto-opens notification screen when app is running

### How It Works

#### When App is RUNNING (Foreground) 📱
1. `ForegroundAlarmMonitor` checks time every second
2. When reminder time matches → **Automatically shows notification screen**
3. Alarm sound plays immediately
4. User sees medicine details and can mark as taken
5. **No need to tap notification!**

#### When App is CLOSED or LOCKED 🔒
1. System scheduled notification fires at exact time
2. Notification appears on lock screen with sound
3. User taps notification → App opens → Notification screen appears
4. Alarm sound plays in loop until dismissed

### Implementation Details

#### 1. ForegroundAlarmMonitor
Located at: `lib/services/foreground_alarm_monitor.dart`

**Features:**
- Runs Timer.periodic every 1 second when app is active
- Checks all enabled reminders against current time
- Respects repeat types (everyday, weekdays, weekends, custom)
- Prevents duplicate triggers (tracks triggered reminders per day)
- Automatically navigates to NotificationScreen
- Plays alarm sound immediately

**Battery Impact:**
- Minimal - only runs when app is in foreground
- Automatically stops when app is closed
- No background processing

**Battery Impact:**
- Minimal - only runs when app is in foreground
- Automatically stops when app is closed
- No background processing

#### 2. BackgroundAlarmService
Located at: `lib/services/background_alarm_service.dart`

**Features:**
- Schedules system-level local notifications
- Works even when app is terminated
- Supports all repeat types (everyday, weekdays, weekends, custom, never)
- Uses timezone-aware scheduling
- Notifications persist across device reboots (on supported devices)

#### 3. NotificationService
Located at: `lib/services/notification_service.dart`

**Handles:**
- Notification configuration for iOS and Android
- Sound playback (continuous alarm loop)
- Notification tap handling
- Permission requests
- Reminder caching for navigation

### User Experience

#### Scenario 1: User is actively using the app
**Time arrives** → Screen automatically switches to NotificationScreen → Alarm plays → User marks as taken ✅

**Advantage:** Immediate, no interaction needed to see the reminder

#### Scenario 2: App is in background (not closed)
**Time arrives** → Notification appears → User taps → Screen switches to NotificationScreen → Alarm plays ✅

#### Scenario 3: App is completely closed or screen is locked
**Time arrives** → Notification appears with sound → User taps → App launches → NotificationScreen appears → Alarm plays ✅

#### Scenario 4: User misses notification
**Notification stays in notification tray** → User can tap anytime → Works as normal ✅

## How Different From Before

### Old Implementation ❌
- Only used system notifications
- Required user to tap notification EVERY TIME (even when app was open)
- No automatic screen transition
- Less convenient when actively using app

### New Implementation ✅
- **Hybrid approach** combines best of both methods
- Automatic screen transition when app is running
- System notifications as backup when app is closed
- Much better user experience
- Still battery efficient

## Testing

### Test Foreground Behavior
1. Open the app
2. Go to Medicine Reminders
3. Add a reminder for **1 minute from now**
4. Set to "everyday" repeat
5. Stay in the app (don't close it)
6. Wait for the time
7. **Expected:** Notification screen automatically appears, alarm plays

### Test Background Behavior
1. Open the app
2. Add a reminder for **2 minutes from now**
3. **Close the app** or lock screen
4. Wait for the time
5. **Expected:** Notification appears on lock screen with sound
6. Tap notification
7. **Expected:** App opens to notification screen, alarm plays

### Test Lock Screen (iOS)
1. Set reminder for 1 minute
2. Lock iPhone screen
3. Wait for notification
4. **Expected:** Notification appears on lock screen, sound plays
5. Tap notification → App opens → Notification screen shows

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
