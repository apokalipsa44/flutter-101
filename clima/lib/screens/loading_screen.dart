import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/weather.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double long;
  double lat;

  @override
  Widget build(BuildContext context) {
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
    getLocation();
  }

  void getLocation() async {
    LocationService locationService = LocationService();
    Position position = await locationService.getLocation();
    long = position.longitude;
    lat = position.latitude;
    getWeather(long, lat);
  }

  void getWeather(double longitude, double latitude) {
    WeatherModel weatherModel = WeatherModel();
    weatherModel.getWeather(longitude, latitude);
  }
}
