import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hava_durumu/widgets/home_widgets/daily_weather_list.dart';
import 'package:hava_durumu/widgets/weather_widgets/graph.dart';
import 'package:hava_durumu/widgets/weather_widgets/weather_detail.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                  SizedBox(
                    height: 15,
                  ),
                  GraphWidget(),
                  SizedBox(
                    height: 15,
                  ),
                   SizedBox(
                    height: 200,
                      child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1,
                        mainAxisSpacing: 5, crossAxisSpacing: 5,
                        mainAxisExtent: 60
                        ),
                        itemCount: 4,
                    itemBuilder: (context, index) => WeatherDetailWidget(),
                  )), 
                   /* Row(
                    children: [
                      WeatherDetailWidget(),
                      SizedBox(
                        width: 20,
                      ),
                      WeatherDetailWidget(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      WeatherDetailWidget(),
                      SizedBox(
                        width: 20,
                      ),
                      WeatherDetailWidget(),
                    ],
                  ), */
                   
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
