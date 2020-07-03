import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/weather.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert' as convert;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double long;
  double lat;

  @override
  Widget build(BuildContext context) {
    getLocation();
    return Scaffold(
      body: Center(
        child: SpinKitRing(
          color: Colors.green,
          size: 100.0,
        ),
      ),
    );
  }

  @override
  void initState() {}

  void getLocation() async {
    LocationService locationService = LocationService();
    Position position = await locationService.getLocation();
    long = position.longitude;
    lat = position.latitude;
    getWeather(long, lat);
  }

  void getWeather(double longitude, double latitude) async {
    WeatherModel weatherModel = WeatherModel(longitude, latitude);
    var weather = await weatherModel.getWeather();
    print('oooooo');
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(weather);
    }));
//    var weatherDecoded = convert.jsonDecode(weather.toString());
  }
}
