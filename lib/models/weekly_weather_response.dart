// To parse this JSON data, do
//
// final TwoWeekWeatherResponse = TwoWeekWeatherResponseFromJson(jsonString);

 import 'dart:convert';

TwoWeekWeatherResponse TwoWeekWeatherResponseFromJson(String str) =>
TwoWeekWeatherResponse.fromJson(json.decode(str));

String TwoWeekWeatherResponseToJson(TwoWeekWeatherResponse data) =>
json.encode(data.toJson()); 

class TwoWeekWeatherResponse {
TwoWeekWeatherResponse({
this.cod,
this.message,
this.cnt,
this.list,
this.city,
});

String? cod;
int? message;
int? cnt;
List<ListElement>? list;
City? city;

factory TwoWeekWeatherResponse.fromJson(Map<String, dynamic> json) =>
TwoWeekWeatherResponse(
cod: json["cod"],
message: json["message"],
cnt: json["cnt"],
list: List<ListElement>.from(
json["list"].map((x) => ListElement.fromJson(x))),
city: City.fromJson(json["city"]),
);

Map<String, dynamic> toJson() => {
"cod": cod,
"message": message,
"cnt": cnt,
"list": List<dynamic>.from(list!.map((x) => x.toJson())),
"city": city!.toJson(),
};
}

class City {
City({
this.id,
this.name,
this.coord,
this.country,
this.population,
this.timezone,
this.sunrise,
this.sunset,
});

int? id;
String? name;
Coord? coord;
String? country;
int? population;
int? timezone;
int? sunrise;
int? sunset;

factory City.fromJson(Map<String, dynamic> json) => City(
id: json["id"],
name: json["name"],
coord: Coord.fromJson(json["coord"]),
country: json["country"],
population: json["population"],
timezone: json["timezone"],
sunrise: json["sunrise"],
sunset: json["sunset"],
);

Map<String, dynamic> toJson() => {
"id": id,
"name": name,
"coord": coord!.toJson(),
"country": country,
"population": population,
"timezone": timezone,
"sunrise": sunrise,
"sunset": sunset,
};
}

class Coord {
Coord({
this.lat,
this.lon,
});

double? lat;
double? lon;

factory Coord.fromJson(Map<String, dynamic> json) => Coord(
lat: json["lat"].toDouble(),
lon: json["lon"].toDouble(),
);

Map<String, dynamic> toJson() => {
"lat": lat,
"lon": lon,
};
}

class ListElement {
ListElement({
this.dt,
this.main,
this.weather,
this.clouds,
this.wind,
this.visibility,
this.pop,
this.sys,
this.dtTxt,
this.rain,
});

int? dt;
MainClass? main;
List<Weather>? weather;
Clouds? clouds;
Wind? wind;
int? visibility;
double? pop;
Sys? sys;
DateTime? dtTxt;
Rain? rain;

factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
dt: json["dt"],
main: MainClass.fromJson(json["main"]),
weather:
List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
clouds: Clouds.fromJson(json["clouds"]),
wind: Wind.fromJson(json["wind"]),
visibility: json["visibility"],
pop: json["pop"].toDouble(),
sys: Sys.fromJson(json["sys"]),
dtTxt: DateTime.parse(json["dt_txt"]),
rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
);

Map<String, dynamic> toJson() => {
"dt": dt,
"main": main!.toJson(),
"weather": List<dynamic>.from(weather!.map((x) => x.toJson())),
"clouds": clouds!.toJson(),
"wind": wind!.toJson(),
"visibility": visibility,
"pop": pop,
"sys": sys!.toJson(),
"dt_txt": dtTxt!.toIso8601String(),
"rain": rain == null ? null : rain!.toJson(),
};
}

class Clouds {
Clouds({
this.all,
});

int? all;

factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
all: json["all"],
);

Map<String, dynamic> toJson() => {
"all": all,
};
}

class MainClass {
MainClass({
this.temp,
this.feelsLike,
this.tempMin,
this.tempMax,
this.pressure,
this.seaLevel,
this.grndLevel,
this.humidity,
this.tempKf,
});

double? temp;
double? feelsLike;
double? tempMin;
double? tempMax;
int? pressure;
int? seaLevel;
int? grndLevel;
int? humidity;
double? tempKf;

factory MainClass.fromJson(Map<String, dynamic> json) => MainClass(
temp: json["temp"].toDouble(),
feelsLike: json["feels_like"].toDouble(),
tempMin: json["temp_min"].toDouble(),
tempMax: json["temp_max"].toDouble(),
pressure: json["pressure"],
seaLevel: json["sea_level"],
grndLevel: json["grnd_level"],
humidity: json["humidity"],
tempKf: json["temp_kf"].toDouble(),
);

Map<String, dynamic> toJson() => {
"temp": temp,
"feels_like": feelsLike,
"temp_min": tempMin,
"temp_max": tempMax,
"pressure": pressure,
"sea_level": seaLevel,
"grnd_level": grndLevel,
"humidity": humidity,
"temp_kf": tempKf,
};
}

class Rain {
Rain({
this.the3H,
});

double? the3H;

factory Rain.fromJson(Map<String, dynamic> json) => Rain(
the3H: json["3h"].toDouble(),
);

Map<String, dynamic> toJson() => {
"3h": the3H,
};
}

class Sys {
Sys({
this.pod,
});

Pod? pod;

factory Sys.fromJson(Map<String, dynamic> json) => Sys(
pod: podValues.map![json["pod"]],
);

Map<String, dynamic> toJson() => {
"pod": podValues.reverse![pod],
};
}

enum Pod { N, D }

final podValues = EnumValues({"d": Pod.D, "n": Pod.N});

class Weather {
Weather({
this.id,
this.main,
this.description,
this.icon,
});

int? id;
MainEnum? main;
Description? description;
String? icon;

factory Weather.fromJson(Map<String, dynamic> json) => Weather(
id: json["id"],
main: mainEnumValues.map![json["main"]],
description: descriptionValues.map![json["description"]],
icon: json["icon"],
);

Map<String, dynamic> toJson() => {
"id": id,
"main": mainEnumValues.reverse![main],
"description": descriptionValues.reverse![description],
"icon": icon,
};
}

enum Description {
SCATTERED_CLOUDS,
BROKEN_CLOUDS,
OVERCAST_CLOUDS,
FEW_CLOUDS,
LIGHT_RAIN,
MODERATE_RAIN
}

final descriptionValues = EnumValues({
"broken clouds": Description.BROKEN_CLOUDS,
"few clouds": Description.FEW_CLOUDS,
"light rain": Description.LIGHT_RAIN,
"moderate rain": Description.MODERATE_RAIN,
"overcast clouds": Description.OVERCAST_CLOUDS,
"scattered clouds": Description.SCATTERED_CLOUDS
});

enum MainEnum { CLOUDS, RAIN }

final mainEnumValues =
EnumValues({"Clouds": MainEnum.CLOUDS, "Rain": MainEnum.RAIN});

class Wind {
Wind({
this.speed,
this.deg,
this.gust,
});

double? speed;
int? deg;
double? gust;

factory Wind.fromJson(Map<String, dynamic> json) => Wind(
speed: json["speed"].toDouble(),
deg: json["deg"],
gust: json["gust"].toDouble(),
);

Map<String, dynamic> toJson() => {
"speed": speed,
"deg": deg,
"gust": gust,
};
}

class EnumValues<T> {
Map<String, T>? map;
Map<T, String>? reverseMap;

EnumValues(this.map);

Map<T, String>? get reverse {
if (reverseMap == null) {
reverseMap = map!.map((k, v) => new MapEntry(v, k));
}
return reverseMap;
}
}


/* class TwoWeekWeatherResponse {
  String? cod;
  int? message;
  int? cnt;
  List<Lista>? list;
  City? city;

  TwoWeekWeatherResponse(
      {this.cod, this.message, this.cnt, this.list, this.city});

  TwoWeekWeatherResponse.fromJson(Map<String, dynamic> json) {
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = <Lista>[];
      json['list'].forEach((v) {
        list!.add(new Lista.fromJson(v));
      });
    }
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cod'] = this.cod;
    data['message'] = this.message;
    data['cnt'] = this.cnt;
    if (this.list != null) {
      data['list'] = this.list!.map((v) => v.toJson()).toList();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    return data;
  }
}

class Lista {
  int? dt;
  Main? main;
  List<Weather>? weather;
  Clouds? clouds;
  Wind? wind;
  int? visibility;
  double? pop;
  Sys? sys;
  String? dtTxt;
  Snow? snow;

  Lista(
      {this.dt,
      this.main,
      this.weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.sys,
      this.dtTxt,
      this.snow});

  Lista.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(new Weather.fromJson(v));
      });
    }
    clouds =
        json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
    dtTxt = json['dt_txt'];
    snow = json['snow'] != null ? new Snow.fromJson(json['snow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    if (this.main != null) {
      data['main'] = this.main!.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds!.toJson();
    }
    if (this.wind != null) {
      data['wind'] = this.wind!.toJson();
    }
    data['visibility'] = this.visibility;
    data['pop'] = this.pop;
    if (this.sys != null) {
      data['sys'] = this.sys!.toJson();
    }
    data['dt_txt'] = this.dtTxt;
    if (this.snow != null) {
      data['snow'] = this.snow!.toJson();
    }
    return data;
  }
}

class Main {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? seaLevel;
  int? grndLevel;
  int? humidity;
  double? tempKf;

  Main(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.seaLevel,
      this.grndLevel,
      this.humidity,
      this.tempKf});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
    humidity = json['humidity'];
    tempKf = json['temp_kf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['temp_min'] = this.tempMin;
    data['temp_max'] = this.tempMax;
    data['pressure'] = this.pressure;
    data['sea_level'] = this.seaLevel;
    data['grnd_level'] = this.grndLevel;
    data['humidity'] = this.humidity;
    data['temp_kf'] = this.tempKf;
    return data;
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Clouds {
  int? all;

  Clouds({this.all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    return data;
  }
}

class Wind {
  double? speed;
  int? deg;
  double? gust;

  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    data['deg'] = this.deg;
    data['gust'] = this.gust;
    return data;
  }
}

class Sys {
  String? pod;

  Sys({this.pod});

  Sys.fromJson(Map<String, dynamic> json) {
    pod = json['pod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pod'] = this.pod;
    return data;
  }
}

class Snow {
  double? d3h;

  Snow({this.d3h});

  Snow.fromJson(Map<String, dynamic> json) {
    d3h = json['3h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['3h'] = this.d3h;
    return data;
  }
}

class City {
  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  City(
      {this.id,
      this.name,
      this.coord,
      this.country,
      this.population,
      this.timezone,
      this.sunrise,
      this.sunset});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.coord != null) {
      data['coord'] = this.coord!.toJson();
    }
    data['country'] = this.country;
    data['population'] = this.population;
    data['timezone'] = this.timezone;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    return data;
  }
}

class Coord {
  double? lat;
  double? lon;

  Coord({this.lat, this.lon});

  Coord.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    return data;
  }
}
 */