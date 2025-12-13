# Medical Apps Monorepo

This repository contains multiple medical-related Flutter applications in a monorepo structure.

## ⚠️ Important Setup Note

**DO NOT run `flutter pub get` at the root directory!**

This is a monorepo with multiple independent Flutter projects. You must navigate into each project directory before running Flutter commands.

## Projects

### 1. Google Map Clone
A Flutter application for finding nearby medical services with map integration.
- **Location**: `google_map_clone/`
- **Features**: Medical service search, Google Maps integration, Prefecture-based location selection

### 2. MediNavi
Medical navigation and healthcare services application with Firebase authentication.
- **Location**: `medinavi-mac/`
- **Features**: Firebase Auth, Healthcare service finder, integrates with Google Map Clone screens
- **Note**: This project depends on `google_map_clone` as a local package dependency

## Getting Started

### Prerequisites
- Flutter SDK (3.8.0 or higher)
- Dart SDK
- Firebase account (for MediNavi)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/S1ThuHtun/medical-apps-monorepo.git
   cd medical-apps-monorepo
   ```

2. **Setup Google Map Clone**
   ```bash
   cd google_map_clone
   flutter pub get
   flutter run
   ```

3. **Setup MediNavi**
   ```bash
   cd medinavi-mac
   flutter pub get
   flutter run
   ```

### Running on Different Platforms

**macOS**
```bash
flutter run -d macos
```

**iOS Simulator**
```bash
flutter run -d "iPhone 17 Pro Max"
```

**Android**
```bash
flutter run -d <device-id>
```

**Web**
```bash
flutter run -d chrome
```

## Project Architecture

- `medinavi-mac/` uses Firebase for authentication
- After successful login, users are navigated to the HomeScreen from `google_map_clone/`
- `google_map_clone/` is added as a path dependency in `medinavi-mac/pubspec.yaml`

## Location Permissions

Both projects use location services. Make sure to:
- Enable Location Services on your device/simulator
- Grant location permission when prompted
- For macOS: Check System Settings → Privacy & Security → Location Services

## Development

Each project maintains its own:
- Dependencies (`pubspec.yaml`)
- Configuration files
- Platform-specific code (Android, iOS, macOS, etc.)

**Always run Flutter commands from within the project directory, not from the root!**
