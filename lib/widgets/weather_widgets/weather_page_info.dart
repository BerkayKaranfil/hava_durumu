import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hava_durumu/providers/weather_provider.dart';
import 'package:provider/provider.dart';

import '../../pages/home_page.dart';

class WeatherPageInfoWidget extends StatelessWidget {
  const WeatherPageInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HourlyWeatherProvider>(
      builder: (context, mainbox, child) {
        return Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xff4F80FA),
                Color(0xff3764D7),
                Color(0xff335FD1),
              ])),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                         // Navigator.pop(context);
                         Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Text(
                      "Istanbul",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.ellipsis,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mondey, 20 December 2022 - 3.30 PM",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Image.asset(
                  "assets/images/cloudyweather.png",
                  scale: 5,
                ),
                /* SvgPicture.asset(
              "assets/images/group21.svg",
              height: 170,
            ), */
                SizedBox(
                  height: 15,
                ),
                Text(
                  // "18º C",
                  // "${mainbox.response.toJson()["main"]["temp"].round()} º C",
                  "${mainbox.responseb.list![mainbox.index].main!.temp!.round()} º C",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  "Cloudly Rain",
                  //mainbox.response.weather![0].description!,

                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Last update 3.00 PM",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                            child: SvgPicture.asset(
                          "assets/images/refresh.svg",
                          height: 24,
                        )))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
