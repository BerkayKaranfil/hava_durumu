import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hava_durumu/providers/weather_provider.dart';
import 'package:provider/provider.dart';
import 'package:string_extensions/string_extensions.dart';

/* extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
} */

class DailyWeatherListWidget extends StatelessWidget {
  const DailyWeatherListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, DailyWeatherProvider value, child) {
        return value.isLoadedDaily == false
            ? Container()
            : Container(
                height: 241,
                child: ListView.builder(
                  itemCount: 7,
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
                                    child: Image.asset(
                                  "assets/images/storm.png",
                                  scale: 8,
                                )
                                    /* FaIcon(
                        FontAwesomeIcons.cloudSun,
                        color: Colors.blue,
                      ) */
                                    )),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 112,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Text(
                                    "Tuesday",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        // "Thunderstorm"
                                        //value.responsec.list![index].weather![0].description.toString(),
                                        //"${value.responsec.list![index].weather![0].description!.toString()}",
                                        "${value.responsec.list![index].weather![0].description.toString().split(".").last.split("_").first.capitalize}",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "${value.responsec.list![index].weather![0].description.toString().split(".").last.split("_").last.toLowerCase()}",
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                  Spacer()
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Row(
                              children: [
                                Text(
                                  //"19º C",
                                  "${value.responsec.list![index].main!.temp!.toInt().toString()} ºC",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.arrowRightFromBracket,
                                    size: 16,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
      },
    );
  }
}
