import 'dart:convert';
import 'dart:developer';
import 'dart:html';

import 'package:http/http.dart' as http;

import '../models/current_weather_response.dart';

Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=40.992112&lon=28.903020&appid=d71abb38006cb001743067f2a8c8ef20"));

    weatherResponse =
        CurrentWeatherResponse.fromJson(jsonDecode(response.body));
    return weatherResponse;
  } catch (e) {
    log(e.toString());
  }

  return null;
}
