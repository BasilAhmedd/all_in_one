import 'package:all_in_one/Models/Weather%20Model/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService{
  static Dio dio = Dio();
  static Future<WeatherModel> getWeather({required String city})async{
    String url = "https://api.weatherapi.com/v1/current.json?q=$city&key=805d8e4621234f858ee72953251903";

    var response = await dio.get(url);
    if(response.statusCode==200){
      return WeatherModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}