import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationService extends StatefulWidget {
  @override
  _LocationServiceState createState() => _LocationServiceState();

  Future getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    return position;
  }
}

class _LocationServiceState extends State<LocationService> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
