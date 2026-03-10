# Screen List

A comprehensive list of all screens (pages) available in the Anti-Diabetes AI App.

## 1. Initial Screens
- **SplashPage**: `lib/features/splash/splash_page.dart` - Entry screen with logo animation.
- **OnboardingPage**: `lib/features/splash/onboarding_page.dart` - Intro to app features.

## 2. Authentication
- **LoginPage**: `lib/features/auth/login_page.dart` - User sign-in.
- **SignupPage**: `lib/features/auth/signup_page.dart` - New user registration.

## 3. Main Navigation (BottomNavPage)
The `BottomNavPage` hosts the following five screens:
- **DashboardPage**: `lib/features/dashboard/dashboard_page.dart` - Health summary.
- **TrackPage**: `lib/features/track/track_page.dart` - Health metric logs (contains 3 tabs).
- **DoctorCategoryPage**: `lib/features/doctors/doctor_category_page.dart` - Browse health specialists.
- **AIChatPage**: `lib/features/ai_chat/ai_chat_page.dart` - Intelligent health assistant.
- **ProfilePage**: `lib/features/profile/profile_page.dart` - User settings and profile details.

## 4. Feature-Specific Screens
- **Track Sub-pages**:
  - `GlucoseHome`
  - `DietHome`
  - `ExerciseHome`
- **Doctor Sub-pages**:
  - `DoctorListPage`
  - `DoctorDetailPage`
