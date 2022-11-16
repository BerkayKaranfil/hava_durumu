import 'package:flutter/material.dart';
import 'package:hava_durumu/pages/home_page.dart';
import 'package:hava_durumu/pages/weather_detail.dart';
import 'package:hava_durumu/providers/weather_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<WeatherProvider>(create: (_) => WeatherProvider(),),
    ChangeNotifierProvider<DailyWeatherProvider>(create: (_) => DailyWeatherProvider(),),
  ], child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
    },);
  }
}
