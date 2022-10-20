// ignore_for_file: file_names, prefer_const_constructors

import 'package:ava/Components/floating%20bar.dart';
import 'package:ava/service/application_loc.dart';
import 'package:ava/service/geolocation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late ApplicationBloc applicationBloc;

  @override
  void didChangeDependencies() async{
    applicationBloc = Provider.of<ApplicationBloc>(context);
    await applicationBloc.setCurrentLocation();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        applicationBloc.currentLocation == null
            ? Container()
            : Container(
                height: 900,
                child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      applicationBloc.currentLocation!.latitude,
                      applicationBloc.currentLocation!.longitude,
                    ),
                    zoom:10,
                  ),
                )),
        FloatingBar(),
      ],
    ));
  }
}
