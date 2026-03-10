# Build and Run

Instructions for running the application on various platforms.

## Running the App

### Using IDE
- Open `lib/main.dart`.
- Select your target device (Emulator/Simulator or physical device).
- Press `F5` (VS Code) or the `Run` button (Android Studio).

### Using Command Line
```bash
flutter run
```

## Building for Production

### Android (APK)
```bash
flutter build apk --release
```
The output file will be at `build/app/outputs/flutter-apk/app-release.apk`.

### iOS
```bash
flutter build ios --release
```
Note: Requires a macOS machine with Xcode installed.

### Web
```bash
flutter build web --release
```
The output will be in the `build/web` directory.

## Debugging

- Use `hot reload` (`r` in terminal) to see changes instantly without restarting the app.
- Use `hot restart` (`R` in terminal) to restart the app and reset state.
