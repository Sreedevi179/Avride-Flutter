//function for getting current location fr the device

import 'package:ava/service/geolocation.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class ApplicationBloc with ChangeNotifier{
  final geoLocatorService = GeolocatorSerice();

  // variable
  Position? currentLocation;

  Future<void> setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
  }
}