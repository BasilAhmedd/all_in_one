class WeatherModel{
  Map<String,dynamic> location;
  Map<String,dynamic> current;
  
  WeatherModel({required this.current,required this.location});
  
  factory WeatherModel.fromJson(Map<String,dynamic>Json){
    return WeatherModel(current: Json['current'], location: Json['location']);
  }
  
}