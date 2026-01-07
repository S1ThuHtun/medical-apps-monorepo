# 🚨 URGENT: App Won't Launch Without This Setup

## The Problem
Your app is stuck on "Launching..." because **Google Maps API key is missing**.

## The Solution - Get Your API Key

### Step 1: Get Google Maps API Key

1. Go to: https://console.cloud.google.com/
2. Select your project or create a new one
3. Click **APIs & Services** → **Credentials**
4. Click **+ CREATE CREDENTIALS** → **API key**
5. Copy the API key (looks like: `AIzaSyD...`)

### Step 2: Enable Required APIs

In Google Cloud Console, go to **APIs & Services** → **Library** and enable:
- ✅ Maps SDK for Android
- ✅ Maps SDK for iOS  
- ✅ Directions API
- ✅ Places API

### Step 3: Add API Key to Your Files

I've already prepared the files for you. You just need to replace `YOUR_GOOGLE_MAPS_API_KEY_HERE` with your actual key:

#### **File 1: Android**
**Location:** `android/app/src/main/AndroidManifest.xml`

Find line 17 and replace:
```xml
android:value="YOUR_GOOGLE_MAPS_API_KEY_HERE"/>
```

With:
```xml
android:value="AIzaSyD...YOUR_ACTUAL_KEY"/>
```

#### **File 2: iOS**  
**Location:** `ios/Runner/AppDelegate.swift`

Find line 12 and replace:
```swift
GMSServices.provideAPIKey("YOUR_GOOGLE_MAPS_API_KEY_HERE")
```

With:
```swift
GMSServices.provideAPIKey("AIzaSyD...YOUR_ACTUAL_KEY")
```

### Step 4: Clean and Rebuild

```bash
flutter clean
flutter pub get
cd ios && pod install && cd ..
flutter run
```

## ✅ After Setup

Once you add your API key, the app will:
- Launch normally (no more stuck on "Launching...")
- Show Google Maps with your locations
- Display transit directions
- Work exactly like Google Maps

## 💰 Cost

Google Maps is **FREE** for most apps:
- $200 monthly credit
- Free tier covers ~50,000 map loads/month
- You only pay if you exceed the free tier

## ⚠️ Important Notes

1. **Don't share your API key publicly** (add it to `.gitignore` in production)
2. **Set up API restrictions** in Google Cloud Console for security
3. The placeholder text `YOUR_GOOGLE_MAPS_API_KEY_HERE` will NOT work - you must replace it with your real key

## Need Help?

See the detailed guide: [GOOGLE_MAPS_SETUP.md](GOOGLE_MAPS_SETUP.md)
