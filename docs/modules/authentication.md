# Authentication Module

The Authentication module manages user sign-in and sign-up flows.

## Features

- **Login Screen**: Allows users to enter their credentials and access the app.
- **Signup Screen**: Enables new users to create an account.
- **Onboarding Flow**: Introduces users to the app's key features before they sign in.

## Technical Details

- **Implementation**: Located in `lib/features/auth/`.
- **Services**: Uses `FakeAuthService` in `lib/core/services/fake_auth_service.dart`.
- **Logic**: 
  - Uses `TextEditingController` for input handling.
  - Implements a 1-second delay to simulate network communication.
  - Hardcoded test credentials:
    - **Email**: `test@gmail.com`
    - **Password**: `123456`

## Navigation Flow

1. **Splash**: Initial loading.
2. **Onboarding**: Carousel of features.
3. **Login / Signup**: Entry point for user authentication.
4. **Dashboard**: Successful login redirects to the main app screen.
