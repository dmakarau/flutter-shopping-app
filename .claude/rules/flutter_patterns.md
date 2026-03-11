# Flutter Patterns

## Widgets
- Prefer `StatelessWidget` by default; only use `StatefulWidget` when local ephemeral state is truly needed
- Extract widgets into their own classes rather than helper methods returning `Widget` — this enables `const`, improves rebuild efficiency, and shows up in the widget tree
- Keep `build()` methods short — if it needs scrolling, split into sub-widgets
- Use `const` constructors on every widget that supports it

## State Management
- Keep UI state (loading, error, data) in a dedicated state class, not as scattered booleans
- Lift state up only as far as needed — avoid putting everything in a global provider
- Use `ValueNotifier` / `ValueListenableBuilder` for simple local state before reaching for a heavier solution

## Performance
- Use `ListView.builder` / `GridView.builder` for long or infinite lists — never build all items eagerly
- Avoid doing work inside `build()` — move computation to the state layer
- Use `RepaintBoundary` to isolate frequently-animating subtrees
- Profile with `flutter run --profile` before optimizing; avoid premature micro-optimizations

## Navigation
- Use named routes or a router package — avoid raw `MaterialPageRoute` scattered across widgets
- Never access `Navigator` from outside the widget tree (e.g. from a repository) — use a navigation service abstraction

## Theming
- Always use `Theme.of(context)` colors and text styles — never hard-code colors or font sizes in widgets
- Define the app's `ThemeData` once and reference it everywhere

## Images & Assets
- Declare all assets in `pubspec.yaml` under `flutter: assets:`
- Use `AssetImage` / `Image.asset` for bundled assets; use a caching package (e.g. `cached_network_image`) for network images

## Platform Differences
- Use `Platform.isIOS` / `Platform.isAndroid` sparingly — prefer adaptive widgets (`CupertinoPageRoute`, `showAdaptiveDialog`) or theme-based branching
