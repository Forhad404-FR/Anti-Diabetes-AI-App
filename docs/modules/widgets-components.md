# Shared Widgets and Components

Consistency is maintained across the Anti-Diabetes AI App by using a library of shared widgets.

## Core Widgets (`lib/core/widgets/`)

These widgets are designed to be reused across multiple features:

### 1. Primary Button
Custom elevated buttons with app-standard padding, border radius, and typography. Used for major actions like Login, Signup, and Saving logs.

### 2. Custom Input Field
Standardized `TextField` wrappers that include validation logic, consistent styling, and focus management.

### 3. Stat Cards
Reusable UI containers for displaying health metrics (Glucose, Calories, Minutes) on the Dashboard and Track pages.

### 4. Health Charts
Visualization components (planned) to be used for tracking health trends over time.

## Design Patterns

- **Composition**: Larger widgets are built by composing smaller, single-purpose widgets.
- **Theming**: All widgets must use `Theme.of(context)` to ensure they automatically adapt to light and dark modes.
- **Consistency**: Icons and colors should always be pulled from `lib/core/constants/`.
