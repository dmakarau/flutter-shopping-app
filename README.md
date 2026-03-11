# Flutter Shopping App

A Flutter shopping application built with a multi-flavor architecture to support separate development, staging, and production environments.

## Getting Started

Make sure you have Flutter installed and run:

```bash
flutter pub get
```

## Running the App

Each environment has its own entry point. Use the `-t` flag to target the right one:

```bash
flutter run -t lib/main.dev.dart       # development
flutter run -t lib/main.staging.dart   # staging
flutter run -t lib/main.prod.dart      # production
```

VS Code launch configs are included in `.vscode/launch.json`. Open the Run & Debug panel (`Cmd+Shift+D`) and select **dev**, **staging**, or **prod**. Do not run `lib/main.dart` directly — it has no `main()` entry point.

## Running Tests

```bash
flutter test
```

## Architecture

The app uses a manual flavor system. Environment-specific configuration (API base URL, app name, app icon) is defined in each entry point file and accessed throughout the app via `FlavorConfig.instance`. See `.claude/rules/architecture.md` for a full breakdown.

## License

MIT — see [LICENSE](LICENSE).
