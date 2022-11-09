import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyWeatherListWidget extends StatelessWidget {
  const DailyWeatherListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 241,
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 72,
              width: 343,
              decoration: BoxDecoration(
                  color: Color(0xffD2DFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff9AB6FF),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: Image.asset("assets/images/storm.png",scale: 8,)
                          /* FaIcon(
                        FontAwesomeIcons.cloudSun,
                        color: Colors.blue,
                      ) */)),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        "Tuesday",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Thunderstorm"),
                      Spacer()
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "19º C",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.arrowRightFromBracket,
                    size: 16,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
