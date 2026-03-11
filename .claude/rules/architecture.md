# Architecture

## Flavor System
The app uses a manual flavor setup. Each environment has its own entry point — never use `lib/main.dart` directly as a run target.

| Entry point | Flavor | Purpose |
|---|---|---|
| `lib/main.dev.dart` | `Flavor.dev` | Local development |
| `lib/main.staging.dart` | `Flavor.staging` | QA / pre-production |
| `lib/main.prod.dart` | `Flavor.prod` | App Store / Play Store |

Each entry point:
1. Instantiates `FlavorConfig` (singleton via factory) with env-specific `FlavorValues`
2. Calls `initializeApp()` from `main.dart`

`main.dart` only exports `initializeApp()` — it never calls `main()` itself.

## Accessing Flavor Config at Runtime
```dart
FlavorConfig.instance.values.apiBaseUrl
FlavorConfig.isDevelopment()
FlavorConfig.isStaging()
FlavorConfig.isProduction()
```

## Adding a New Environment Value
Add the field to `FlavorValues` in `lib/core/app_flavor/flavor_config.dart`, then populate it in each of the three entry point files.

## Folder Structure Convention
```
lib/
  core/          # App-wide infrastructure (flavor, theme, routing, DI)
  features/      # Feature modules (each self-contained)
    <feature>/
      data/      # Repositories, data sources, models
      domain/    # Entities, use cases, repository interfaces
      presentation/ # Pages, widgets, state management
  shared/        # Reusable widgets and utilities used across features
```
Follow feature-first organization — group by feature, not by layer.
