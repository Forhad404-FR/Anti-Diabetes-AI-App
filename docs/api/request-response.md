# Request and Response Models

Data consistency is enforced through well-defined request and response models.

## Sample Models

### 1. User Profile Model
```dart
class UserProfile {
  final String id;
  final String email;
  final String name;
  final double latestGlucose;

  UserProfile({
    required this.id,
    required this.email,
    required this.name,
    this.latestGlucose = 0.0,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    id: json['id'],
    email: json['email'],
    name: json['name'],
    latestGlucose: json['latestGlucose']?.toDouble() ?? 0.0,
  );
}
```

### 2. Health Log Model (Generic)
```dart
class HealthLog {
  final String title;
  final String value;
  final DateTime timestamp;
  final LogType type; // Enum: glucose, diet, exercise

  HealthLog({
    required this.title,
    required this.value,
    required this.timestamp,
    required this.type,
  });
}
```

## Serialization Rules
- Use `factory` methods for JSON deserialization.
- Ensure all models are immutable (`final` fields).
- Handle null safety appropriately (provide defaults or use nullable types).
