import 'package:all_in_one/Providers/Weather%20Provider/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key, required this.city});
   final String city;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather"), centerTitle: true,),
      body: Consumer<WeatherProvider>(builder: (context, value, child) {
        var data = value.weatherModel;
        if(data == null){
          value.getWeatherProv(city: city);
          return Center(child: CircularProgressIndicator(),);
        }else{
          return Container(
            padding: EdgeInsets.only(top: 50),
            color: Colors.blue,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(data.location['name'],style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.w700),),
                    Text(data.location['localtime'],style: TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.w600),),
                  ],
                ),

                    Text(data.current['temp_c'].toString(),style: TextStyle(color: Colors.white,fontSize: 30),),

                Column(
                  children: [
                    Image.network("https:${data.current['condition']['icon']}"),
                    Text(data.current['condition']['text'],style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w600),),
                  ],
                ),
              ],
            ),
          );
        }
      },),
    );
  }
}
