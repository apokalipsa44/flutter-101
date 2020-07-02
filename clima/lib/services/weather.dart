import 'package:http/http.dart' as http;
import 'package:clima/utilities/constants.dart';
import 'dart:convert' as convert;
import 'package:sprintf/sprintf.dart';

class WeatherModel {
  double latitude;
  double longitude;

  WeatherModel(this.longitude, this.latitude);

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future getWeather() async {
    String latitudeUrl = latitude.toString();
    String longitudeUrl = longitude.toString();
    String url = sprintf(kWeatherUrl, [latitudeUrl, longitudeUrl]) + kApi_Key;

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return response;
    }
  }
}
