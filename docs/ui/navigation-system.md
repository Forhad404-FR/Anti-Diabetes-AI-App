# Navigation System

The Anti-Diabetes AI App uses a combination of named routes and a bottom navigation system.

## 1. Named Routes

Routes are centrally defined in `lib/app/app_routes.dart`. This ensures that all paths are consistent and easy to manage.

```dart
static Map<String, WidgetBuilder> get routes => {
  splash: (context) => const SplashPage(),
  onboarding: (context) => const OnboardingPage(),
  login: (context) => const LoginPage(),
  signup: (context) => const SignupPage(),
  home: (context) => const BottomNavPage(),
  dashboard: (context) => const BottomNavPage(),
};
```

## 2. Bottom Navigation

The main app experience is managed by the `BottomNavPage` (`lib/navigation/bottom_nav_page.dart`). It controls the five primary sections of the app using a `BottomNavigationBar`.

### Navigation Tabs
- **Dashboard**: (Index 0)
- **Track**: (Index 1)
- **Doctors**: (Index 2)
- **AI Chat**: (Index 3)
- **Profile**: (Index 4)

## 3. Navigation Best Practices

- **Use Named Routes**: Avoid manual navigation (e.g., `Navigator.push(context, MaterialPageRoute(...))`) when moving between main screens.
- **Navigator context**: Ensure you use the correct context when navigating from deep within the widget tree.
- **Deep Linking**: The named route structure is ready to be expanded for deep linking support in the future.
