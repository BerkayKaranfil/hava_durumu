import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherDetailWidget extends StatelessWidget {
  const WeatherDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: 164,
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/images/1.svg",
            color: Color(0xff3C6EEF),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Spacer(),
              Text("86%",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5,
              ),
              Text("Humidity"),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}