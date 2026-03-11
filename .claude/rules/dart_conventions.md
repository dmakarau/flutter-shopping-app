# Dart Conventions

## Naming
- Classes, enums, typedefs: `UpperCamelCase`
- Variables, functions, parameters: `lowerCamelCase`
- Constants: `lowerCamelCase` (not SCREAMING_CAPS)
- Private members: prefix with `_`
- Files: `snake_case.dart`

## Immutability
- Prefer `final` for all variables that are not reassigned
- Prefer `const` wherever possible — constructors, lists, maps, widgets
- Use `const` constructors in widget trees to prevent unnecessary rebuilds

## Null Safety
- Avoid `!` (bang operator) unless genuinely certain the value is non-null — use `??`, `?.`, or early returns instead
- Prefer explicit null checks over nullable chains

## Functions & Classes
- Prefer named parameters for functions with more than two parameters
- Use `required` for mandatory named parameters
- Keep functions small and single-purpose
- Use `extension` methods to add functionality to existing types instead of utility classes

## Collections
- Prefer collection literals over constructors: `[]` over `List()`
- Use spread operators and collection-if/for for concise collection building

## Error Handling
- Use typed exceptions, not generic `Exception` or `String` throws
- Prefer `Either` / `Result` types for expected error states in domain/data layers over try-catch in UI

## Code Style
- Maximum line length: 80 characters (enforced by `dart format`)
- Always use `dart format .` before committing
- Remove unused imports — `flutter analyze` will catch them

## Writing Style (comments, docs, READMEs)
- Write like a human, not a marketing page — plain, direct sentences
- No emojis in code comments, documentation, or markdown files
- No filler phrases ("seamlessly", "robust", "powerful", "leverages")
- Prefer short sentences over long compound ones
