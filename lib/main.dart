import 'package:flutter/material.dart';
import 'package:world_cup/screens/home.dart';
import 'package:world_cup/screens/schedule.dart';
import 'package:world_cup/screens/squads.dart';
import 'package:world_cup/screens/stories.dart';
import 'package:world_cup/screens/venue.dart';
import 'package:world_cup/screens/winners.dart';
// import 'package:admob_flutter/admob_flutter.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:http/http.dart' as http;
// import 'package:firebase_admob/firebase_admob.dart';

void main() {
  //  Admob.initialize('ca-app-pub-1831836139264063~7080055383');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-1831836139264063~7080055383")
        .then((response) {
      myBanner
        ..load()
        ..show();
    });
    http
        .get(
            'https://firestore.googleapis.com/v1/projects/godcrampy-world-cup/databases/(default)/documents/stories/uRCyL12Wvm4Z1m5QzYcm')
        .then((http.Response response) {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Cup 2019',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Oswald',
      ),
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/Schedule': (BuildContext context) => SchedulePage(),
        '/Squads': (BuildContext context) => SquadsPage(),
        '/Updates': (BuildContext context) => StoriesPage(),
        '/Venue': (BuildContext context) => VenuePage(),
        '/Winners': (BuildContext context) => WinnersPage()
      },
    );
  }
}

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['cricket', 'apps', 'world cup', '2019', 'icc']);

String myId = 'ca-app-pub-1831836139264063/7828308075';

BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads

  adUnitId: myId,
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);
