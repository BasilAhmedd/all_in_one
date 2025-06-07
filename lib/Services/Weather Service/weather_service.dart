import 'package:all_in_one/Models/Weather%20Model/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService{
  static Dio dio = Dio();
  static Future<WeatherModel> getWeather({required String city})async{
    String url = "https://api.weatherapi.com/v1/current.json?q=$city&key=YOUR_KEY";

    var response = await dio.get(url);
    if(response.statusCode==200){
      return WeatherModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}