# Flutter App (Clean Architecture)

A Flutter application built using **Feature-Based Clean Architecture**, following separation of concerns with `presentation`, `widgets`, and `provider` layers.  
The app demonstrates **custom widgets, animations, and state management with Provider**.

---

## 🛠️ Flutter Version

- **Flutter:** 3.35.2
- **Dart:** 3.9.0

## ✨ Features

- **Login Screen**

  - Custom input fields and buttons.
  - Provider state management for handling form validation and navigation.

- **Home Screen**

  - Displays the main UI after login.
  - Organized widgets .

---

## 🏗️ Project Structure

```bash
lib/
│
├── core/                        # Core utilities, themes, constants, custom widgets
│
├── features/
│   ├── login/
│   │   └── presentation/
│   │       ├── screens/         # LoginScreen
│   │       ├── widgets/         # Custom input fields, buttons
│   │       └── provider/        # LoginProvider
│   │
│   ├── home/
│   │   └── presentation/
│   │       ├── screens/         # HomeScreen
│   │       ├── widgets/         # Home UI widgets
│   │       └── provider/        # HomeProvider
│   │
│   └── checkin/
│       └── presentation/
│           ├── screens/
│           ├── widgets/
│           └── provider/
│
└── main.dart                    # App entry point
```
