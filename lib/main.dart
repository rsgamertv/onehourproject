import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainPage.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_application_1/examples/bicycle_page.dart';
import 'package:flutter_application_1/examples/circle_map_object_page.dart';
import 'package:flutter_application_1/examples/clusterized_placemark_collection_page.dart';
import 'package:flutter_application_1/examples/driving_page.dart';
import 'package:flutter_application_1/examples/map_controls_page.dart';
import 'package:flutter_application_1/examples/map_object_collection_page.dart';
import 'package:flutter_application_1/examples/pedestrian_page.dart';
import 'package:flutter_application_1/examples/placemark_map_object_page.dart';
import 'package:flutter_application_1/examples/polygon_map_object_page.dart';
import 'package:flutter_application_1/examples/polyline_map_object_page.dart';
import 'package:flutter_application_1/examples/reverse_search_page.dart';
import 'package:flutter_application_1/examples/search_page.dart';
import 'package:flutter_application_1/examples/suggest_page.dart';
import 'package:flutter_application_1/examples/user_layer_page.dart';
import 'package:flutter_application_1/examples/widgets/map_page.dart';
import 'package:flutter_application_1/map_page.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp( MyApp());
}
const List<MapPage> allPages = <MapPage>[
  MapControlsPage(),
  ClusterizedPlacemarkCollectionPage(),
  MapObjectCollectionPage(),
  PlacemarkMapObjectPage(),
  PolylineMapObjectPage(),
  PolygonMapObjectPage(),
  CircleMapObjectPage(),
  UserLayerPage(),
  SuggestionsPage(),
  SearchPage(),
  ReverseSearchPage(),
  BicyclePage(),
  PedestrianPage(),
  DrivingPage(),
];
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routes: {
              '/MainPage':(context) => MainPage(),
              '/SecondPage':(context) => SecondPage(),
            },
<<<<<<< HEAD
            initialRoute: '/MainPage',
=======
            home: MapsPage(),
>>>>>>> ec1e1ab (commit)
        );
      },
    );
  }
}


