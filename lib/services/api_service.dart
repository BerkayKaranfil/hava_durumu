import 'dart:convert';
import 'dart:developer';

import 'package:hava_durumu/models/daily_weather_response.dart';
import 'package:http/http.dart' as http;

import '../models/current_weather_response.dart';
import '../models/weekly_weather_response.dart';
import 'package:dio/dio.dart';

Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=40.992112&lon=28.903020&appid=d71abb38006cb001743067f2a8c8ef20&units=metric"));

    weatherResponse =
        CurrentWeatherResponse.fromJson(jsonDecode(response.body));
    // print(response.body);
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
        "http://api.openweathermap.org/data/2.5/forecast?appid=d71abb38006cb001743067f2a8c8ef20&id=524901&units=metric"));

    dailyWeatherResponse =
        TwoWeekWeatherResponse.fromJson(jsonDecode(responseb.body));
    // print(responseb.body);
    return dailyWeatherResponse;
  } catch (e) {
    log(e.toString());
  }

  return null;
}

/* Future<DailyWeatherResponse?> getDailyApiData(context) async {
  DailyWeatherResponse dailyWeatherListResponse;
  try {
    final responsec = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?id=524901&appid=890213a235a2d2e61ce1cff44424eab1&units=metric"));

    dailyWeatherListResponse =
        DailyWeatherResponse.fromJson(jsonDecode(responsec.body));
    print(responsec.body);
    return dailyWeatherListResponse;
  } catch (e) {
    log(e.toString());
  }

  return null;
} */

Future<DailyWeatherResponse?> getDailyApiData(context) async {
  DailyWeatherResponse dailyWeatherListResponse;
  try {
    final responsec = await Dio().get(
      "https://api.openweathermap.org/data/2.5/forecast",
      queryParameters: {
        "id": 524901,
        "appid": "890213a235a2d2e61ce1cff44424eab1",
        "units": "metric",
      },
    );

    dailyWeatherListResponse =
        DailyWeatherResponse.fromJson(responsec.data);
    print(responsec.data);
    return dailyWeatherListResponse;
  } catch (e) {
    log(e.toString());
  }

  return null;
}
