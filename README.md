# 🎯 Flutter Weather App

A cross-platform weather application built with Flutter and Dart.

## ✨ Features
- Current weather conditions
- 5-day forecast
- Location-based weather
- Beautiful Material Design UI
- Dark/Light mode
- Offline support
- Smooth animations

## 🛠️ Tech Stack
| Component | Technology |
|-----------|------------|
| **Framework** | Flutter 3.x |
| **Language** | Dart 3.x |
| **State Management** | Riverpod |
| **Networking** | Dio + Retrofit |
| **API** | OpenWeatherMap |
| **Charts** | fl_chart |
| **Storage** | Hive (NoSQL) |
| **Min SDK** | Android 5.0+, iOS 12+ |

## 🏗️ Architecture

```
flutter-weather-app/
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   ├── theme/
│   │   └── utils/
│   ├── data/
│   │   ├── datasources/
│   │   ├── models/
│   │   └── repositories/
│   ├── domain/
│   │   ├── entities/
│   │   └── usecases/
│   ├── presentation/
│   │   ├── providers/
│   │   ├── screens/
│   │   └── widgets/
│   └── main.dart
├── test/
├── pubspec.yaml
└── README.md
```

## 🚀 Quick Start

```bash
# Clone
git clone https://github.com/nelwaderushikesh27/flutter-weather-app.git

# Navigate
cd flutter-weather-app

# Get dependencies
flutter pub get

# Run
flutter run
```

## 📸 Screenshots

<div align="center">
<img src="screenshots/home.png" width="200">
<img src="screenshots/forecast.png" width="200">
<img src="screenshots/settings.png" width="200">
</div>

## 📦 Key Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.5.0
  dio: ^5.4.0
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  fl_chart: ^0.66.0
  geolocator: ^11.0.0
  intl: ^0.19.0
  flutter_dotenv: ^5.1.0
```

## 🔑 Environment Setup

Create `.env` file:
```
WEATHER_API_KEY=your_openweathermap_key
```

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ macOS
- ✅ Linux
- ✅ Windows

## 🤝 Contributing

Pull requests welcome! See [CONTRIBUTING.md](CONTRIBUTING.md).

---
*Built with ❤️ using Flutter*
