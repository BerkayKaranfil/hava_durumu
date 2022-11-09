import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}