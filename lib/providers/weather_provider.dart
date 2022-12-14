import 'package:flutter/cupertino.dart';
import 'package:hava_durumu/models/current_weather_response.dart';
import 'package:hava_durumu/models/daily_weather_response.dart';

import '../models/weekly_weather_response.dart';
import '../services/api_service.dart';

class WeatherProvider with ChangeNotifier {
  CurrentWeatherResponse response = CurrentWeatherResponse();
  bool isLoading = false;
  

  getWeatherData(context) async {
    isLoading = true;
    response = (await getCurrentData(context))!;
    isLoading = false;
    notifyListeners();
  }
}


class HourlyWeatherProvider with ChangeNotifier{
  TwoWeekWeatherResponse responseb = TwoWeekWeatherResponse();
  bool isLoading = false;
  int index = 0;
  
  getDailyWeatherDatab(context) async {
    isLoading = true;
    responseb =(await getDailyWeatherData(context))!;
    isLoading = false;
    notifyListeners();
  }

  swapIndex (int indext){
    index = indext;
    notifyListeners();
  }
}


class DailyWeatherProvider with ChangeNotifier{
  DailyWeatherResponse responsec = DailyWeatherResponse();
  bool isLoadedDaily = false;

  getDailyListWeatherDataa(context) async {
    isLoadedDaily = false;
    responsec = (await getDailyApiData(context))!;
    isLoadedDaily = true;
    notifyListeners(); 
  }
}