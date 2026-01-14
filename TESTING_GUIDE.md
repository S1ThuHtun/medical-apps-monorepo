# Testing Guide: Background Alarm on iPhone

## Quick Test Steps

### 1. Set a Test Reminder
1. Open the app on your iPhone
2. Go to the Medicine Reminder screen
3. Tap the "+" button to add a new reminder
4. Enter:
   - Medicine name: "Test Medicine"
   - Set dose time to **2 minutes from now**
   - Choose "everyday" for repeat
   - Set doses per day: 1
5. Save the reminder

### 2. Lock Your iPhone
1. Press the power button to lock the screen
2. Wait for the reminder time

### 3. Expected Behavior (When Screen is Locked)

#### ✅ What WILL happen:
- Notification appears on lock screen at the exact time
- **Notification sound plays automatically** 🔔
- Banner shows: "💊 Test Medicine - Time to take your medicine!"
- You'll hear the default iOS notification sound

#### ⚠️ What will NOT happen:
- The app will NOT open automatically (iOS security restriction)
- The continuous alarm loop will NOT start until you tap the notification

### 4. Tap the Notification
1. Tap the notification on your lock screen
2. App opens to the Notification Screen
3. **Continuous alarm sound starts playing in a loop** 🔊
4. You see the medicine details
5. Tap "I've Taken It" to dismiss the alarm

## Understanding iOS Behavior

### Why doesn't the app open automatically?
**iOS Security**: Apps cannot force themselves to open without user interaction. This prevents malicious apps from hijacking your device.

### How the alarm works:
1. **Notification fires** → Sound plays (even when locked) ✅
2. **User taps notification** → App opens + Continuous alarm plays ✅
3. **User dismisses** → Alarm stops ✅

This is the **correct and only possible behavior** on iOS. Medical reminder apps like "Medisafe" and "MyTherapy" work the same way.

## Advanced Testing

### Test with App Closed
1. Set a reminder for 2 minutes
2. **Force close the app** (swipe up from app switcher)
3. Lock the screen
4. Wait for notification time
5. **Result**: Notification still appears and sound plays! ✅

### Test with Do Not Disturb
1. Enable Do Not Disturb
2. Set a reminder
3. **Result**: Notification appears in Notification Center but sound may be silenced
4. **Note**: Time Sensitive notifications (like ours) can bypass DND if you allow it in Settings

## Troubleshooting

### No notification appears
- Check Settings → Notifications → MediNavi
- Ensure "Allow Notifications" is ON
- Ensure "Lock Screen" is checked
- Ensure "Sounds" is checked

### Notification appears but no sound
- Check device volume
- Ensure "Sounds" permission is granted
- Check notification settings: Settings → Notifications → MediNavi → Sounds

### Want to test immediately without waiting
- Use the test alarm button (🔔) in the top-right of the reminder screen
- This immediately plays the alarm to verify audio works

## What's Different from Before?

### Old Implementation (Didn't work when locked ❌)
- Used `Timer.periodic()` to check time every second
- Only worked when app was active
- Failed when screen was locked (iOS kills background timers)

### New Implementation (Works when locked ✅)
- Uses iOS native local notifications
- System schedules and delivers notifications
- Works even when app is closed or device is locked
- Notification sound plays automatically

## Files Changed
- `lib/services/background_alarm_service.dart` - NEW: Handles notification scheduling
- `lib/screens/reminder/medicine_reminder_screen.dart` - Uses BackgroundAlarmService
- `lib/services/notification_service.dart` - Enhanced with iOS sound configuration
- `ios/Runner/Info.plist` - Added UIBackgroundModes for audio

## Summary

✅ Notification appears when screen is locked  
✅ Sound plays automatically at reminder time  
✅ Works even when app is closed  
✅ Continuous alarm plays after tapping notification  
✅ Proper iOS implementation following Apple guidelines  

This is the standard behavior for all medical reminder apps on iOS!
