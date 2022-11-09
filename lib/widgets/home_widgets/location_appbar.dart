import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class LocationWidget extends StatefulWidget {
   LocationWidget({super.key});

  String dropdownvalue = "Istanbul";
  var items = ["Istanbul", "Ankara", "Tekirdag", "Izmir", "Balikesir"];

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 40,
              width: 400,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/location24.png",
                      )),
                  DropdownButton(
                      isDense: true,
                      underline: SizedBox(),
                      value: widget.dropdownvalue,
                      iconEnabledColor: Color(0xff035176),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: widget.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(color: Color(0xffB3B3B3)),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                         setState(() {
                          widget.dropdownvalue = newValue!;
                        }); 
                        
                      }),
                  SizedBox(
                    width: 170,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/search.png",
                      )),
                ],
              ),
            );
  }
}