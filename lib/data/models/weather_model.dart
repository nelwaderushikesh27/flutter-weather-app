class WeatherModel {
  final String cityName;
  final double temperature;
  final String condition;
  final double humidity;
  final double windSpeed;
  final String icon;
  final List<ForecastDay> forecast;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
    required this.icon,
    required this.forecast,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'] ?? '',
      temperature: (json['main']['temp'] as num).toDouble(),
      condition: json['weather'][0]['description'] ?? '',
      humidity: (json['main']['humidity'] as num).toDouble(),
      windSpeed: (json['wind']['speed'] as num).toDouble(),
      icon: json['weather'][0]['icon'] ?? '',
      forecast: [],
    );
  }
}

class ForecastDay {
  final String date;
  final double tempMax;
  final double tempMin;
  final String condition;

  ForecastDay({
    required this.date,
    required this.tempMax,
    required this.tempMin,
    required this.condition,
  });
}
