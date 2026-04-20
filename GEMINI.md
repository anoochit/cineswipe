# CineSwipe Project Overview

CineSwipe is a Flutter-based mobile and web application designed for cinematic discovery. The project aims to provide an immersive, "editorial" experience for exploring films, moving away from traditional grid-based layouts towards a more dynamic and atmospheric interface.

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version ^3.11.1 as specified in `pubspec.yaml`)
- Dart SDK

### Building and Running
To run the application in debug mode:
```powershell
flutter run
```

To build the application for a specific platform (e.g., web):
```powershell
flutter build web
```

To run tests:
```powershell
flutter test
```

To analyze the code for linting issues:
```powershell
flutter analyze
```

## 🎨 Design Strategy: "The Digital Projectionist"

The project follows a specialized design system detailed in `ref/DESIGN.md`. Key principles include:

- **Immersive Atmosphere**: High-contrast, moody aesthetic mimicking an indie cinema.
- **Intentional Asymmetry**: Rejection of rigid grids in favor of a curated, narrative-driven UI.
- **Color Palette**: 
  - **Base**: `surface-dim` (#131313) for deep, cinematic blacks.
  - **Highlights**: Vibrant neon pulses (`primary` #ffb1c3) for calls to action.
- **Typography**: 
  - **Headlines**: Space Grotesk for bold, poster-like authority.
  - **Body**: Inter for clean, readable metadata.
- **Visual Rules**:
  - **No Borders**: Content is separated by background shifts (`surface-container-low` vs. `surface`), never by lines.
  - **Glassmorphism**: Floating elements use 60% opacity with backdrop-blur.
  - **Tonal Layering**: Depth is created through subtle color shifts rather than heavy shadows.

## 🛠️ Tech Stack & Conventions

- **Framework**: [Flutter](https://flutter.dev/)
- **State Management**: (Currently using default `StatefulWidget` in `lib/main.dart`, but the project is set up for extension.)
- **Linting**: Uses `package:flutter_lints` as defined in `analysis_options.yaml`.
- **Project Structure**:
  - `lib/`: Main source code directory.
  - `ref/`: Design system documentation and reference assets (`DESIGN.md`, `screen.png`).
  - `test/`: Unit and widget tests.
  - `web/`: Web-specific configuration and assets.

## 📝 Development Guidelines

1. **Adhere to the Design System**: When building new UI components, strictly follow the rules in `ref/DESIGN.md` (e.g., the "No-Line" rule).
2. **Formatting**: Always run `dart format .` before committing code.
3. **Analysis**: Ensure `flutter analyze` passes without warnings.
4. **Clean Code**: Favor composition and small, reusable widgets to maintain readability.
