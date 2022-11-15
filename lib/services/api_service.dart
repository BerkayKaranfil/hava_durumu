import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/current_weather_response.dart';
import '../models/weekly_weather_response.dart';

Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=40.992112&lon=28.903020&appid=d71abb38006cb001743067f2a8c8ef20&units=metric"));

    weatherResponse =
        CurrentWeatherResponse.fromJson(jsonDecode(response.body));
    print(response.body);
    return weatherResponse;
  } catch (e) {
    log(e.toString());
  }

  return null;
}



Future<TwoWeekWeatherResponse?> getDailyWeatherData(context) async {
  TwoWeekWeatherResponse dailyWeatherResponse;
  try {
    final responseb = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=40.988604&lon=28.905296&appid=d71abb38006cb001743067f2a8c8ef20&units=metric"));

    dailyWeatherResponse =
        TwoWeekWeatherResponse.fromJson(jsonDecode(responseb.body));
    print(responseb.body);
    return dailyWeatherResponse;
  } catch (e) {
    log(e.toString());
  }

  return null;
}
