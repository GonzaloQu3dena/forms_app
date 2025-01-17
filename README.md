# Forms App

## Summary

**Forms App** is a Flutter application built with a **Domain-Driven Design (DDD)** architecture. It allows users to fill out and submit various forms with validation and state management. The app integrates seamless animations and efficient state management to provide a modern and engaging user experience.

<p align="center">
  <img src="https://via.placeholder.com/200" alt="app-evidence" width="200"/>
</p>  

## Features

Key features of the project include:

- **Domain-Driven Design (DDD)** architecture for scalable and maintainable code.
- **Form validation** with detailed error messages using `formz`.
- **Navigation** with `go_router` for declarative routing.
- **State management** powered by `flutter_bloc` and `equatable`.

## Framework

This project was developed using the [Flutter](https://flutter.dev/) framework.

### Folder Structure

The app follows a **Domain-Driven Design (DDD)** approach with an additional `public/` directory for reusable UI components:

```plaintext
lib/
├── features/
│   ├── counter/
│   │   ├── application/
│   │   │   ├── bloc/
│   │   ├── presentation/
│   │       ├── screens/
│   │       ├── widgets/
|   |── iam/
│   │   ├── application/
│   │   │   ├── cubit/
│   │   ├── infrastructure/
│   │   |   ├── validation/
│   │   ├── presentation/
│   │       ├── screens/
│   │       ├── widgets/
├── public/
│   ├── home/
│   │   ├── screens/
│   │   ├── widgets/
├── shared/
│   ├── theme/
│   ├── router/
```

The `public/` directory contains shared UI elements such as the home section, which is organized into pages and widgets for modularity and reusability.

## Development Setup

Follow these steps to set up and run the project:

### 1. Clone the repository:
Clone the project from the GitHub repository:
```bash
git clone https://github.com/your-username/forms_app.git
```

### 2. Navigate to the project directory:
Move into the project folder: 
```bash
cd forms_app
```

### 3. Install Dependencies:
Download the required packages and dependencies:
```bash
flutter pub get
```

### 4. Generate Necessary Files:
Run the build runner to generate required files, such as models or serializers:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 5. Run the App:
Launch the app on an emulator or a connected device:
```bash
flutter run
```
The app will automatically reload when you make changes to the source files.

## YAML Configuration
Ensure the following dependencies are included in the `pubspec.yaml` file:
```yaml 
dependencies:
  equatable: ^2.0.7
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.6
  formz: ^0.8.0
  go_router: ^14.6.3

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0

flutter:
  uses-material-design: true
```

## Building the app
To build the project for release, run the following command:
```
flutter build apk
```
This will generate the APK file for Android. For iOS, you can use:
```
flutter build ios
```

## Contribute to this project
You can contribute to this project by submitting issues or pull requests in the [GitHub repository](https://github.com/GonzaloQu3dena/forms_app). We welcome new ideas, features, and improvements!