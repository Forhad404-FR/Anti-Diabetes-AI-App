# Performance Considerations

Ensuring a smooth 60fps experience for our users.

## 1. Widget Rebuilds
- **Concern**: Large widget trees might rebuild too frequently.
- **Action**: Use `const` constructors and split large widgets into smaller sub-widgets to limit the scope of rebuilds.

## 2. Image Optimization
- **Concern**: High-resolution assets can cause memory lag.
- **Action**: Use optimized asset resolutions and consider lazy loading for remote images (via `cached_network_image`).

## 3. Asynchronous Operations
- **Concern**: Blocking the UI thread with synchronous calculations or heavy library calls.
- **Action**: Use `compute()` or separate Isolates for heavy computational tasks.

## 4. App Size
- **Concern**: Large binary size due to unused assets or dependencies.
- **Action**: Regularly audit `pubspec.yaml` and use ProGuard/R8 for Android release builds.
