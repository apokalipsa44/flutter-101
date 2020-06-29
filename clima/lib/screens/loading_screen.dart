import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    getWeather();
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text('Get Location'),
        ),
      ),
    );
  }

  @override
  void initState() {
    LocationService locationService = LocationService();
    locationService.getLocation();
  }

  void getWeather() {
    WeatherModel weatherModel = WeatherModel();
    weatherModel.getWeather();
  }
}
