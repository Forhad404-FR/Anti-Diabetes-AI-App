# Folder Structure

Below is a detailed breakdown of the `lib/` directory structure and the purpose of each folder.

```text
lib/
├── main.dart             # Entry point of the Flutter application
│
├── app/                  # Application-wide configuration
│   ├── app.dart          # Root widget (AntiDiabetesApp)
│   ├── app_routes.dart   # Centralized routing definitions
│   └── app_theme.dart    # App-wide light and dark themes
│
├── core/                 # Shared resources and infrastructure
│   ├── constants/        # Fixed values (assets, colors, strings)
│   ├── services/         # Layer for data fetching and business logic
│   ├── utils/            # General-purpose helper functions
│   └── widgets/          # Reusable UI components (buttons, text fields)
│
├── features/             # Individual app features (modules)
│   ├── ai_chat/          # AI Chat assistant module
│   ├── auth/             # Login, signup, and authentication flow
│   ├── dashboard/        # Main summary and stats page
│   ├── doctors/          # Doctor listing and booking
│   ├── profile/          # User profile and settings
│   ├── splash/           # Splash and onboarding screens
│   └── track/            # Glucose, Diet, and Exercise trackers
│
└── navigation/           # Navigation-specific components
    └── bottom_nav_page.dart # Main screen with bottom navigation bar
```

## Structure Guidelines

- **Always keep features isolated**: Avoid direct dependencies between feature folders unless necessary.
- **Move shared code to core**: If a widget or utility is used in 2+ features, it should live in `core/`.
- **Define constants in constants/**: Avoid hardcoding colors, strings, or asset paths in the UI.
