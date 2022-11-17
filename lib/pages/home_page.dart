import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hava_durumu/widgets/home_widgets/daily_list.dart';
import 'package:hava_durumu/widgets/home_widgets/daily_weather_list.dart';
import 'package:hava_durumu/widgets/home_widgets/info_box.dart';
import 'package:hava_durumu/widgets/home_widgets/main_box.dart';
import 'package:provider/provider.dart';

import '../providers/weather_provider.dart';
import '../widgets/home_widgets/location_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherProvider? wetProvider;
  HourlyWeatherProvider? dailyProvider;
  DailyWeatherProvider? dailyListWeatherProvider;

  @override
  void initState() {
    super.initState();

    wetProvider = Provider.of<WeatherProvider>(context, listen: false);
    wetProvider!.getWeatherData(context);

    dailyProvider = Provider.of<HourlyWeatherProvider>(context, listen: false);
    dailyProvider!.getDailyWeatherDatab(context);

    dailyListWeatherProvider =
        Provider.of<DailyWeatherProvider>(context, listen: false);
    dailyListWeatherProvider!.getDailyListWeatherDataa(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              FadeInLeft(
                  duration: Duration(milliseconds: 500),
                  child: LocationWidget()),
              SizedBox(
                height: 5,
              ),
              FadeInRight(
                  duration: Duration(seconds: 1),
                  child: WeatherConfirmationWidget()),
              SizedBox(
                height: 10,
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    "Hourly Weather",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInRight(
                  duration: Duration(milliseconds: 500),
                  child: HourlyWeatherSituationWidget()),
              SizedBox(
                height: 6,
              ),
              FadeInLeft(
                duration: Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    "Daily",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInRight(
                  duration: Duration(milliseconds: 500), child: InfoWidget()),
              SizedBox(
                height: 10,
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 500),
                  child: DailyWeatherListWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
