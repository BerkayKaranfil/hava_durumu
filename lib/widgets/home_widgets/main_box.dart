import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hava_durumu/main.dart';
import 'package:hava_durumu/models/current_weather_response.dart';
import 'package:hava_durumu/pages/weather_detail.dart';
import 'package:hava_durumu/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class WeatherConfirmationWidget extends StatelessWidget {
  const WeatherConfirmationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, WeatherProvider mainbox, child) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeatherDetailPage(),
                ));
          },
          child: Container(
            height: 192,
            width: 343,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5)
                ],
                //  color: Color(0xff4F7FFA),
                gradient: LinearGradient(
                    colors: [Color(0xff00D0E2), Color(0xff4F7FFA)]),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Monday, 20 December 2021",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 77,
                      ),
                      Text(
                        "3:30 PM",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      /*  Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bulut.png",), fit: BoxFit.contain), color: Colors.red,),
                        ), */
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Image.asset(
                          "assets/images/cloudyweather.png",
                          scale: 7,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      /* Container(
                      height: 100,
                      width: 120,
                      child: 
                       SvgPicture.asset(
                        "assets/images/group21.svg",
                        height: 120,
                        fit: BoxFit.fitWidth,
                      ) 
                      ), */
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Column(
                          children: [
                            Text(
                              // "18º C",
                              "${mainbox.response.toJson()["main"]["temp"].round()} º C",
                              //"${mainbox.response.main!.temp.toString()} º C",

                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                             // "Cloudy Rain",
                             mainbox.response.weather![0].description!,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Last update 3.00 PM",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: SvgPicture.asset("assets/images/refresh.svg"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
