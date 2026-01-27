# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter counter application ("Mon Super Compteur" / "Mes Petits Totaux") used as an educational project for learning Flutter basics. It demonstrates StatefulWidget, state management with setState, and Material Design components.

## Common Commands

```bash
# Get dependencies
flutter pub get

# Run the app
flutter run

# Run tests
flutter test

# Run a specific test file
flutter test test/widget_test.dart

# Analyze code for errors and lints
flutter analyze

# Format code
dart format lib/
```

## Architecture

Single-file application in `lib/main.dart`:
- `MyApp` - StatelessWidget that configures MaterialApp with theme
- `MyHomePage` - StatefulWidget serving as the main screen
- `_MyHomePageState` - Manages counter state with `_incrementCounter()` method

## Testing

Widget tests are located in `test/`. The project uses `flutter_test` for widget testing and `flutter_lints` for static analysis.
