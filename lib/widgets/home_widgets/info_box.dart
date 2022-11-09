import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 343,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/InformationState.png")),
        // color: Color.fromARGB(255, 245, 168, 151),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset("assets/images/info.svg"),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                "Tomorrow's weather is likely\nit will rain in the afternoon",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Don't forget to bring an umbrella"),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}
