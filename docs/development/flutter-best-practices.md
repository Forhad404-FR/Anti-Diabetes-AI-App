# Flutter Best Practices

Maintain high performance and a premium user experience by following these Flutter-specific best practices.

## 1. UI and Rendering

- **Use `const` Widgets**: Always use `const` for widgets that don't change. This allows Flutter to short-circuit the rebuild process.
- **Minimize `setState()`**: Call `setState()` as far down the widget tree as possible to avoid rebuilding entire pages.
- **Keys**: Use `ValueKey` or `ObjectKey` when working with lists to help Flutter efficiently track widget identity.

## 2. Assets and Resources

- **Lazy Loading**: Use `ListView.builder` for long lists to load items only when they are visible.
- **Asset Management**: Always define asset paths in `lib/core/constants/app_assets.dart` instead of hardcoding strings in the UI.

## 3. Code Organization

- **Logic vs UI**: Keep business logic out of `build()` methods. Move logic to services or state management controllers.
- **Extension Methods**: Use Dart extensions to add functionality to existing classes (e.g., adding a `toCapitalized()` method to `String`).

## 4. Testing

- **Widget Tests**: Test individual components in isolation.
- **Integration Tests**: Verify that features work together as expected (e.g., the login-to-dashboard flow).
- **Unit Tests**: Test business logic in your services and models.

## 5. Helpful Commands

- **Upgrade Packages**: `flutter pub upgrade`
- **Clean Project**: `flutter clean` (useful if you encounter strange build errors)
- **Generate Code**: `flutter pub run build_runner build` (if using packages like `json_serializable` or `freezed`).
