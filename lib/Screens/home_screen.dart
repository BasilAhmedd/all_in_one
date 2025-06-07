import 'package:all_in_one/Screens/News%20Screens/news_search_screen.dart';
import 'package:all_in_one/Screens/Random%20User%20Screens/random_user_screen.dart';
import 'package:all_in_one/Screens/Products%20Screens/shop_home_screen.dart';
import 'package:all_in_one/Screens/Weather%20Screens/weather_search_screen.dart';
import 'package:all_in_one/Widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      CustomShape(iconData: Icons.ac_unit, txt:"Weather" , color: Colors.blue,tap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => WeatherSearchScreen() ,) );
      },),
      CustomShape(iconData: Icons.people_alt_outlined, txt: "Random User", color: Colors.amber,tap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => RandomUserScreen() ,) );
      },),
      CustomShape(iconData: Icons.newspaper, txt: "News", color: Colors.red,tap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => NewsSearchScreen() ,) );
      },),
      CustomShape(iconData: Icons.shopping_cart_outlined, txt: "Shop", color: Colors.deepPurpleAccent,tap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => ShopHomeScreen() ,) );
      },)
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Home"),centerTitle: true,),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => data[index],),
    );
  }
}
