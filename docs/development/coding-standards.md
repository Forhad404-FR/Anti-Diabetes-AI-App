# Coding Standards

To maintain a clean and readable codebase, all contributors must follow these standards.

## 1. Dart Style Guide

- Use lowerCamelCase for variables, constants, and functions.
- Use UpperCamelCase for classes and enums.
- Use lowercase with underscores for filenames.
- Always add commas at the end of parameter lists (helps with auto-formatting).

## 2. Flutter Best Practices

- **Avoid Long `build()` Methods**: Break down complex UI into smaller, independent widgets.
- **Prefer `const` Constructors**: Mark widgets as `const` whenever possible to improve performance.
- **Use `SizedBox`**: Instead of empty `Container` for spacing.
- **Naming Widgets**: Suffix screen widgets with `Page` (e.g., `LoginPage`) and partial widgets with `Widget` (e.g., `StatWidget`).

## 3. Formatting

Run the Dart formatter before committing:
```bash
dart format .
```

## 4. Linting

The project uses `flutter_lints`. Ensure no warnings or errors are reported in the `Problems` tab of your IDE.
```bash
flutter analyze
```

## 5. Comments and Documentation

- **Doc Comments**: Use `///` for public APIs and classes.
- **Internal Comments**: Use `//` for implementation details.
- Avoid obvious comments; write code that is self-explanatory.
