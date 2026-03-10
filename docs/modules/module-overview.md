# Module Overview

The Anti-Diabetes AI App is built as a set of modular features, each located in the `lib/features/` directory.

## Core Modules

### 1. Authentication (`lib/features/auth/`)
Handles user identity, login, and registration. Currently uses a `FakeAuthService` for local testing.

### 2. Dashboard (`lib/features/dashboard/`)
The app's home screen providing a summary of the user's health status and quick actions.

### 3. Trackers (`lib/features/track/`)
A multi-tab module for logging health metrics:
- **Glucose**: Blood sugar level tracking.
- **Diet**: Food intake logging.
- **Exercise**: Physical activity tracking.

### 4. AI Chat (`lib/features/ai_chat/`)
An intelligent assistant module aimed at providing personalized health advice based on user data.

### 5. Doctors (`lib/features/doctors/`)
A module for browsing doctor categories and managing medical appointments.

### 6. Splash & Onboarding (`lib/features/splash/`)
The initial user experience, featuring a splash screen and onboarding walkthrough.

## Shared Infrastructure

### Services (`lib/core/services/`)
- **FakeAuthService**: Simulated authentication logic.
- **ApiService**: Placeholder for future REST API integration.
- **AiService**: Placeholder for AI-backend communication.
- **Diet/Exercise/Doctor Services**: Placeholders for feature-specific data operations.

### Shared Widgets (`lib/core/widgets/`)
Located in `lib/core/widgets/`, these components are used across multiple modules to ensure UI consistency.
