import 'package:all_in_one/Providers/Auth%20Provider/login_provider.dart';
import 'package:all_in_one/Providers/Auth%20Provider/register_provider.dart';
import 'package:all_in_one/Providers/News%20Provider/news_provider.dart';
import 'package:all_in_one/Providers/Products%20Provider/products_provider.dart';
import 'package:all_in_one/Providers/Random%20User%20Provider/random_user_provider.dart';
import 'package:all_in_one/Providers/Weather%20Provider/weather_provider.dart';
import 'package:all_in_one/Screens/Auth%20Screens/login_screen.dart';
import 'package:all_in_one/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RandomUserProvider(),),
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
        ChangeNotifierProvider(create: (context) => RegisterProvider(),),
        ChangeNotifierProvider(create: (context) => ProductsProvider(),),
        ChangeNotifierProvider(create: (context) => NewsProvider(),),
        ChangeNotifierProvider(create: (context) => WeatherProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: LoginScreen()
      ),
    );
  }
}
