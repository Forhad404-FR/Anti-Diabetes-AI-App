# App Architecture

The Anti-Diabetes AI App follows a clean, feature-first architecture. This design promotes a clear separation of concerns, scalability, and maintainability.

## Architectural Layers

The project is organized into 3 main top-level directories under `lib/`:

### 1. `lib/app/` (The Foundation)
Contains the root application configuration, global themes, and the centralized routing system.

### 2. `lib/core/` (Shared Infrastructure)
Houses code that is used across multiple features.
- `core/constants`: Global strings, colors, assets, and typography.
- `core/services`: Singleton services for API, Authentication, etc.
- `core/utils`: Shared helper functions and extensions.
- `core/widgets`: Common UI components used throughout the app.

### 3. `lib/features/` (Feature Modules)
The core of the application logic. Each subdirectory represents a specific user-facing feature (e.g., `auth`, `dashboard`, `track`). This makes it easy to add, modify, or remove features independently.

## Key Principles

- **Separation of Concerns**: UI, logic, and data layers are kept distinct.
- **Modularity**: New features can be added without affecting existing ones.
- **Dependency Management**: Services are designed as singletons for consistent data access.
