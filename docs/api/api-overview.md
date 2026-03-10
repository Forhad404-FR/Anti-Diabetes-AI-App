# API Documentation Overview

The Anti-Diabetes AI App is designed to communicate with a secure backend API for data persistence and AI-driven insights.

## Current Status

- **Architecture**: The `lib/core/services/` layer is prepared for API integration.
- **Communication**: Currently uses fake services to simulate network requests.
- **Future Tech Stack**: Recommended to use `Dio` for HTTP requests due to its robust feature set (interceptors, global configuration, etc.).

## Connectivity Flow

1. **Request**: UI initiates a request via a Service.
2. **Execution**: Service uses `ApiService` (placeholder) to perform an async network call.
3. **Response**: Data is received in JSON format.
4. **Serialization**: raw JSON is converted into Dart objects using factory methods.

## Authentication

All future real API calls will require Bearer Token authentication:
- **Header**: `Authorization: Bearer <token>`
- Tokens will be securely stored using `flutter_secure_storage`.
