import 'package:all_in_one/Models/Weather%20Model/weather_model.dart';
import 'package:all_in_one/Services/Weather%20Service/weather_service.dart';
import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier{
  WeatherModel? weatherModel;
  Future<void> getWeatherProv({required String city})async{
    weatherModel = await WeatherService.getWeather(city: city);
    notifyListeners();
  }
}