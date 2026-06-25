import 'package:dio/dio.dart';
import '../models/weather_model.dart';

class WeatherApiService {
  final Dio _dio;

  WeatherApiService(this._dio);

  Future<WeatherModel> getCurrentWeather(String city) async {
    final response = await _dio.get('/weather', queryParameters: {
      'q': city,
      'appid': const String.fromEnvironment('WEATHER_API_KEY'),
      'units': 'metric',
    });
    return WeatherModel.fromJson(response.data);
  }

  Future<WeatherModel> getWeatherByCoords(double lat, double lon) async {
    final response = await _dio.get('/weather', queryParameters: {
      'lat': lat,
      'lon': lon,
      'appid': const String.fromEnvironment('WEATHER_API_KEY'),
      'units': 'metric',
    });
    return WeatherModel.fromJson(response.data);
  }

  Future<List<WeatherModel>> getForecast(String city) async {
    final response = await _dio.get('/forecast', queryParameters: {
      'q': city,
      'appid': const String.fromEnvironment('WEATHER_API_KEY'),
      'units': 'metric',
    });
    return (response.data['list'] as List)
        .map((e) => WeatherModel.fromJson(e))
        .toList();
  }
}
