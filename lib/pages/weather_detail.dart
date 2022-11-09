import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hava_durumu/widgets/home_widgets/daily_weather_list.dart';
import 'package:hava_durumu/widgets/weather_widgets/weather_page_info.dart';

class WeatherDetailPage extends StatefulWidget {
  const WeatherDetailPage({super.key});

  @override
  State<WeatherDetailPage> createState() => _WeatherDetailPageState();
}

class _WeatherDetailPageState extends State<WeatherDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          WeatherPageInfoWidget(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    "Hourly Weather",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                HourlyWeatherSituationWidget(),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text(
                    "Information Details",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  height: 109,
                  width: 343,
                  decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      SvgPicture.asset("assets/images/graph.svg"),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Spacer(),
                          Text("AQI - Very Good", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Air quality in your area for now\nvery good. No air pollution\nwhich causes various diseases."),
                          Spacer()
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
