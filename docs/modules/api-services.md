# API Services Layer

The service layer is the bridge between the UI and the backend services.

## Architecture

Located in `lib/core/services/`, this layer follows the singleton pattern or utilizes static methods for global accessibility and consistent behavior.

## Current Services

### Authentication Service (`fake_auth_service.dart`)
- **Status**: Simulated implementation.
- **Role**: Handles login and signup logic using hardcoded data and artificial delays.

### API Service (`api_service.dart`)
- **Status**: **Placeholder**.
- **Target**: To be implemented using `http` or `dio` packages for RESTful communication with the backend.

### AI Service (`ai_service.dart`)
- **Status**: **Placeholder**.
- **Target**: Integration with AI models (e.g., Gemini, OpenAI, or a custom health-focused AI backend).

## Planned Implementations

### Service Blueprint

```dart
class HealthService {
  Future<List<GlucoseLog>> fetchLogs() async {
    // 1. Call ApiService to get raw JSON
    // 2. Parse JSON into GlucoseLog model
    // 3. Return list
  }
}
```

## Security Considerations
- All API calls must eventually support Bearer Token authentication.
- Sensitive health data must be encrypted during transit (HTTPS).
