# Testing

## Test Types
- **Unit tests** (`test/`): pure Dart logic — use cases, repositories, utilities. No Flutter framework needed.
- **Widget tests** (`test/`): single widget or small subtree in isolation using `testWidgets` + `WidgetTester`.
- **Integration tests** (`integration_test/`): full app flows on a real device/emulator.

Prefer widget tests over integration tests for UI coverage — they are faster and more reliable.

## Running Tests
```bash
flutter test                                 # all unit + widget tests
flutter test test/features/cart/             # single feature
flutter test --coverage                      # generate coverage report
```

## Widget Test Structure
```dart
testWidgets('description of expected behaviour', (tester) async {
  await tester.pumpWidget(const MyWidget());
  await tester.pump(); // settle animations

  expect(find.text('expected text'), findsOneWidget);
});
```

## Mocking
- Use `mockito` (with `@GenerateMocks`) or `mocktail` for mocking dependencies
- Inject dependencies via constructor so they can be swapped in tests — never instantiate dependencies inside widgets or use cases

## Golden Tests
- Use golden tests for pixel-sensitive UI components: `matchesGoldenFile('name.png')`
- Update goldens explicitly: `flutter test --update-goldens`

## Conventions
- One test file per source file, mirroring the `lib/` structure under `test/`
- Test file names end with `_test.dart`
- Group related tests with `group()`
- Test names describe behaviour, not implementation: `'shows error when cart is empty'` not `'calls _showError'`
