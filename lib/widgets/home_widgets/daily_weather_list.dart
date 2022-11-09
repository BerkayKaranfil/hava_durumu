import 'package:flutter/material.dart';

class HourlyWeatherSituationWidget extends StatelessWidget {
  const HourlyWeatherSituationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
            child: Container(
              height: 107,
              width: 78,
              decoration: BoxDecoration(
                  color: Color(0xffFBFBFB),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/cloudyweather.png",
                    scale: 15,
                  ),
                  /* Container(
                    height: 60,
                    width: 78,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/cloudyweather.png",
                            ),
                            scale: 15,
                            )),
                  ), */
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "20º",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("4.00 PM")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
