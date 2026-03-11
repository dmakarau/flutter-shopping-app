# Commands

## Running the App
```bash
flutter run -t lib/main.dev.dart       # development
flutter run -t lib/main.staging.dart   # staging
flutter run -t lib/main.prod.dart      # production
```

## Testing
```bash
flutter test                           # all tests
flutter test test/widget_test.dart     # single file
flutter test --coverage                # with coverage
```

## Code Quality
```bash
flutter analyze                        # lint
dart fix --apply                       # auto-fix lint issues
dart format .                          # format all files
```

## Dependencies
```bash
flutter pub get
flutter pub upgrade --major-versions   # upgrade to latest
flutter pub outdated                   # check for newer versions
```
