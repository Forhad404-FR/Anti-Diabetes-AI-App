# Widget Structure

The app's UI is built on a highly modular widget hierarchy.

## Key Widget Tree Example: `TrackPage`

```text
TrackPage (StatelessWidget)
└── DefaultTabController
    └── Scaffold
        ├── AppBar (Title: "Track")
        │   └── TabBar (Tab: "Glucose", "Diet", "Exercise")
        └── body: TabBarView
            ├── GlucoseHome (Widget)
            ├── DietHome (Widget)
            └── ExerciseHome (Widget)
```

## Dashboard Layout Structure

```text
DashboardPage (StatelessWidget)
└── Scaffold
    └── SingleChildScrollView
        └── Column
            ├── WelcomeHeader (Widget)
            ├── DailyProgressCard (Widget)
            ├── QuickActionGrid (Widget)
            └── RecommendationCard (Widget)
```

## Atomic Design Principles

- **Atoms**: Basic components (e.g., `AppButton`, `AppText`).
- **Molecules**: Groups of atoms (e.g., `SearchField` with icon and text input).
- **Organisms**: Complex combinations of molecules (e.g., `DoctorCard` with image, name, and book button).
- **Templates**: Page-level structures (e.g., `BasePageLayout`).
- **Pages**: Final screens with real or mock data.
