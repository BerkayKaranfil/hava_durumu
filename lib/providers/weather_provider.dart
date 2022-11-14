import 'package:flutter/cupertino.dart';
import 'package:hava_durumu/models/current_weather_response.dart';

import '../services/api_service.dart';

class WeatherProvider with ChangeNotifier{
  CurrentWeatherResponse response = CurrentWeatherResponse();
  bool isLoading = false;

  getWeatherData(context) async {
    isLoading = true;
    response = (await getCurrentData(context))!;
    isLoading = false;
    notifyListeners();
  }
}