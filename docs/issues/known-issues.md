# Known Issues

A list of currently identified issues and limitations in the project.

## 1. Service Layer
- **Issue**: Services are currently placeholders or utilize fake data.
- **Impact**: App does not connect to a real backend.
- **Solution**: Implement backend and integrate REST API.

## 2. Authentication
- **Issue**: Login credentials are hardcoded in `FakeAuthService`.
- **Impact**: Anyone with the app can access the dashboard.
- **Solution**: Connect to an OAuth or JWT-based auth provider.

## 3. Data Persistence
- **Issue**: No local database or persistent storage (e.g., Hive, SQLite).
- **Impact**: All health metrics logged by the user are lost upon app restart.
- **Solution**: Integrate `Hive` or `sqflite` for offline data storage.

## 4. Error Handling
- **Issue**: Basic global-catch-all or missing error boundaries.
- **Impact**: UI might crash or show unexpected behavior during failure.
- **Solution**: Implement a robust error handling strategy and user-friendly error dialogs.
