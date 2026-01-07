# Google Maps Setup Instructions

## Overview
Your app now uses **Google Maps Flutter** for an authentic Google Maps experience! This document explains what was changed and how to configure it.

## What Changed

### 1. **Replaced flutter_map with google_maps_flutter**
- Old: OpenStreetMap tiles via `flutter_map`
- New: Official Google Maps with native map rendering
- Benefits:
  - Authentic Google Maps look and feel
  - Better performance and smooth animations
  - Access to Google's latest map data
  - Built-in features like Street View, indoor maps, etc.

### 2. **Google Maps Styling**
All UI elements now match Google Maps exactly:
- **Colors**: Google Blue (#1A73E8), Google Green (#34A853), Google Yellow (#FBBC04)
- **Typography**: Matching font weights and letter spacing
- **Button styles**: Flat design with Google's border colors (#DADCE0)
- **Route colors**: Blue for transit/walking, green for bicycling
- **Markers**: Standard Google Maps red pins and blue dots

### 3. **Enhanced Features**
- ✅ Google Maps native controls (zoom, my location)
- ✅ Smooth camera animations
- ✅ Proper route polylines with mode-specific colors
- ✅ Walking routes show dotted lines
- ✅ Multiple route alternatives display
- ✅ Transit details screen with timeline UI

## Platform Configuration

### **Android Configuration**

1. **Add your Google Maps API key** to `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest ...>
    <application ...>
        <!-- Add this inside <application> tag -->
        <meta-data
            android:name="com.google.android.geo.API_KEY"
            android:value="YOUR_GOOGLE_MAPS_API_KEY_HERE"/>
            
        <activity ...>
            ...
        </activity>
    </application>
</manifest>
```

2. **Update minimum SDK version** in `android/app/build.gradle`:

```gradle
android {
    defaultConfig {
        minSdkVersion 21  // Google Maps requires at least 21
    }
}
```

### **iOS Configuration**

1. **Add your Google Maps API key** to `ios/Runner/AppDelegate.swift`:

```swift
import UIKit
import Flutter
import GoogleMaps  // Add this import

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Add this line with your API key
    GMSServices.provideAPIKey("YOUR_GOOGLE_MAPS_API_KEY_HERE")
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

2. **Update `ios/Podfile`** to set minimum iOS version:

```ruby
platform :ios, '14.0'  # Google Maps requires at least iOS 14
```

3. **Add location permissions** to `ios/Runner/Info.plist`:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to your location to show nearby medical services.</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>This app needs access to your location to show nearby medical services.</string>
```

## Google Maps API Setup

### **1. Enable Required APIs**
Go to [Google Cloud Console](https://console.cloud.google.com/) and enable:
- ✅ **Maps SDK for Android**
- ✅ **Maps SDK for iOS**
- ✅ **Directions API** (already enabled for transit data)
- ✅ **Places API** (already enabled)
- ✅ **Geocoding API** (recommended)

### **2. API Key Restrictions (Security)**

For **Android**:
- Application restrictions: Android apps
- Add your package name: `com.example.medinavi` (or your actual package)
- Add your SHA-1 certificate fingerprint

For **iOS**:
- Application restrictions: iOS apps
- Add your bundle identifier

### **3. Billing**
Google Maps requires a billing account, but includes:
- $200 monthly credit (covers most apps)
- Free tier: 28,500 map loads per month
- Pay only if you exceed the free tier

## Testing

### **Run the app:**

```bash
flutter pub get
flutter run
```

### **Verify Google Maps is working:**
1. Open the app and select a medical service
2. Tap "Directions" button
3. You should see:
   - ✅ Google Maps tiles (not OpenStreetMap)
   - ✅ Google's road styling and labels
   - ✅ Smooth zoom animations
   - ✅ Blue route line
   - ✅ Red destination marker
   - ✅ Blue location dot

### **Test transit mode:**
1. Select "Transit" travel mode
2. You should see:
   - ✅ Transit details screen automatically opens
   - ✅ Route timeline with stations
   - ✅ Transit line colors and numbers
   - ✅ Walking segments shown
   - ✅ Departure/arrival times
   - ✅ Fare information (if available)

## Troubleshooting

### **"Failed to load map"**
- Check API key is correctly added
- Verify Maps SDK for Android/iOS is enabled
- Check billing is enabled

### **"Authorization failure"**
- Verify API key restrictions match your app
- Check package name (Android) or bundle ID (iOS)

### **Map shows but no route**
- Ensure Directions API is enabled
- Check you haven't exceeded API quota
- Verify start/end coordinates are valid

### **Transit data not showing**
- Transit data availability varies by location
- Google Maps may not have transit data for all areas
- App will show appropriate error message if unavailable

## Cost Estimation

Based on typical usage:
- **Map loads**: ~$7 per 1,000 loads (after free tier)
- **Directions API**: $5 per 1,000 requests (after free tier)
- **Places API**: Already in use

**Monthly estimate for small app:**
- 5,000 active users
- 10 map views per user
- 50,000 total map loads/month
- **Cost**: $0 (covered by $200 free credit)

## Documentation

- [Google Maps Flutter Plugin](https://pub.dev/packages/google_maps_flutter)
- [Google Maps Platform](https://developers.google.com/maps)
- [API Key Best Practices](https://developers.google.com/maps/api-key-best-practices)

## Support

If you encounter issues:
1. Check the troubleshooting section above
2. Review Google Cloud Console logs
3. Test on a real device (simulators have limitations)
4. Verify your API key has all required APIs enabled
