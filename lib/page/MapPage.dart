import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatelessWidget {
  final double subwaylat;
  final double subwaylng;

  const MapSample({Key? key, required this.subwaylat, required this.subwaylng})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Completer<GoogleMapController> _controller =
    Completer<GoogleMapController>();


    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: true,
         myLocationEnabled: true,
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        scrollGesturesEnabled: true,
        rotateGesturesEnabled: true,
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(subwaylat, subwaylng),
          zoom: 16.9,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },

      ),
    );
  }
}
