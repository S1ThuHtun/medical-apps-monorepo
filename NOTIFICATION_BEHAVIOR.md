# Notification Behavior Explained

## How Notifications Work in MediNavi

### When Screen is LOCKED 🔒

#### iOS:
1. ✅ Notification appears on lock screen at scheduled time
2. ✅ Notification sound plays automatically
3. ⚠️ **User MUST tap notification** to open app
4. ✅ App opens → Alarm loops → Shows NotificationScreen

**Why no auto-open?** iOS security prevents apps from opening automatically. This is standard behavior for ALL iOS apps.

#### Android:
1. ✅ Notification appears on lock screen at scheduled time
2. ✅ Notification sound plays automatically
3. ✅ **Full-screen notification MAY auto-display** (depending on Android version & settings)
4. ✅ If user taps → App opens → Alarm loops → Shows NotificationScreen

**Note:** Android 12+ requires users to grant "USE_FULL_SCREEN_INTENT" permission manually in system settings.

### When App is IN FOREGROUND (Open) 📱

#### Current Behavior:
- Notification fires silently in background
- Notification appears in notification shade
- User must tap notification to trigger alarm

#### Expected Behavior:
- Notification should trigger alarm immediately
- App should auto-navigate to NotificationScreen
- No need to tap notification

### The Issue

When the app is **in foreground**, the scheduled notification fires but doesn't automatically show the notification screen. This is because:

1. `flutter_local_notifications` schedules system notifications
2. When scheduled time arrives, the system displays a notification
3. But the app doesn't get a callback UNTIL the user taps the notification
4. There's no built-in way to detect "notification time arrived" while app is running

## Solution Options

### Option 1: Use Timer (App must be running) ⏱️
Add a background timer that checks for upcoming reminders and triggers the notification screen automatically when app is in foreground.

**Pros:**
- Works perfectly when app is open
- Immediate screen transition

**Cons:**
- Battery drain
- Doesn't work when app is closed/screen locked

### Option 2: Hybrid Approach (Recommended) ✅
Combine system notifications with in-app timer:
- **When app is open**: Timer checks reminders and auto-shows notification screen
- **When app is closed/locked**: System notifications alert user → User taps → App opens

**Pros:**
- Best user experience
- Works in all scenarios
- Battery efficient (timer only runs when app is open)

**Cons:**
- Slightly more complex implementation

### Option 3: Keep Current (System Notifications Only) 📲
Rely entirely on system notifications.

**Pros:**
- Battery efficient
- Follows OS patterns
- Works when app is closed

**Cons:**
- User must always tap notification (even when app is open)

## Recommendation

I recommend **Option 2: Hybrid Approach** because:
1. When user is actively using the app → Immediate alarm without tapping
2. When screen is locked → Standard notification behavior
3. Battery efficient → Timer only runs when app is active
4. Best of both worlds

Would you like me to implement the hybrid approach?
