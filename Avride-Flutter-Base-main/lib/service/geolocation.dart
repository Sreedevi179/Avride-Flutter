//function for getting current location fr the device
import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class GeolocatorSerice {
  Future<Position?> getCurrentLocation() async {
    try {
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
