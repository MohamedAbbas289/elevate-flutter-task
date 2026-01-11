# Elevate Flutter Technical Task

A professional product listing application built with Flutter that fetches data from the Fake Store API. This project demonstrates Clean Architecture, modern state management, and dependency injection.

## 📸 App Preview
![Product Grid](screenshots/task_screenshot.jpeg)

## 🏗️ Architecture & Patterns
This project follows **Clean Architecture** to ensure the code is scalable, maintainable, and testable:

- **MVVM Pattern**: Separation of UI (View) and Logic (ViewModel/Cubit).
- **Repository Pattern**: Abstracting data sources from the business logic.
- **Dependency Injection (DI)**: Using `get_it` and `injectable` for automated service location.
- **State Management**: Using `flutter_bloc` (Cubit) to handle the UI states (Loading, Success, Error).

## 📂 Project Structure
- `lib/core`: DI configuration and shared utilities.
- `lib/data`: Data models (JSON parsing) and Repository implementations.
- `lib/domain`: Abstract repository definitions and business logic.
- `lib/presentation`: UI screens, custom widgets, and Cubit logic.

## 🛠️ Built With
- [Flutter](https://flutter.dev/) - UI Framework.
- [Dio](https://pub.dev/packages/dio) - Networking client.
- [Flutter Bloc](https://pub.dev/packages/flutter_bloc) - State management.
- [Get It](https://pub.dev/packages/get_it) & [Injectable](https://pub.dev/packages/injectable) - Dependency Injection.

## ⚙️ Setup & Run
1. Clone the repository.
2. Install dependencies:
   ```bash
   flutter pub get
