import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
class MapsPage extends StatefulWidget {
  const MapsPage({super.key});
  

  @override
  State<MapsPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapsPage> {
  var mapZoom = 0.0;
  Completer<YandexMapController> _completer = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(child: YandexMap(
        onMapCreated: onMapCreated,
        onCameraPositionChanged: onCameraPosChanged,
        mapObjects: [
        ],
      )),
    );
  }

  void onMapCreated(YandexMapController controller) {
    _completer.complete(controller);
    controller.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(target: Point(latitude: 55.7558, longitude: 37.6173),zoom: 10)));
  }

  void onCameraPosChanged(CameraPosition cameraPosition, CameraUpdateReason reason, bool finished) {
    setState(() {
      mapZoom = cameraPosition.zoom;
    });
  }
}