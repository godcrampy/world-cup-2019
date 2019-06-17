import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:share/share.dart';
import 'package:launch_review/launch_review.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  void initState() {
    super.initState();
    firebaseCloudMessaging_Listeners();
  }

  void firebaseCloudMessaging_Listeners() {
    _firebaseMessaging.getToken().then((token) {
      print(token);
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
    double pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: pageHeight * 0.3,
                width: pageWidth,
                color: Color(0xee245d),
                child: Container(
                  child: Image.asset('assets/cup.png'),
                  margin: EdgeInsets.symmetric(vertical: pageHeight * 0.05),
                )),
            buildCardGrid(pageHeight, pageWidth, context)
          ],
        ),
      ),
      floatingActionButton: Column(children: [
        SizedBox(height: MediaQuery.of(context).size.height - 120),
        FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Wrap(
                    children: <Widget>[
                      // Row(children:[
                      ListTile(
                        onTap: () {
                          LaunchReview.launch();
                          Navigator.pop(context);
                          setState(() {});
                        },
                        leading: Icon(Icons.star),
                        title: Text('Rate'),
                      ),
                      ListTile(
                        onTap: () {
                          Share.share(
                              'Get the latest updates for the ICC Cricket World Cup 2019\n https://play.google.com/store/apps/details?id=com.godcrampy.world_cup');
                          Navigator.pop(context);
                          setState(() {});
                        },
                        leading: Icon(Icons.share),
                        title: Text('Share'),
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  );
                });
          },
          child: Container(
            child: Icon(Icons.favorite_border),
          ),
          backgroundColor: Colors.pink,
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget buildCardGrid(
      double pageHeight, double pageWidth, BuildContext context) {
    return Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCard('Schedule', pageHeight, pageWidth, context),
              SizedBox(height: pageHeight * 0.007),
              _buildCard('Venue', pageHeight, pageWidth, context),
              SizedBox(height: pageHeight * 0.007),
              _buildCard('Winners', pageHeight, pageWidth, context),
              SizedBox(height: pageHeight * 0.007),
              _buildCard('Squads', pageHeight, pageWidth, context),
            ],
          ),
          SizedBox(
            width: 7,
          ),
          Column(children: [
            InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Card(
                    color: Colors.green,
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    child: Container(
                        child: Center(
                          child: FutureBuilder<Score>(
                            future: fetchScore(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data.content.replaceAll("\\n", "\n"),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                );
                              } else if (snapshot.hasError) {
                                return Text(
                                  "No Internet Access",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                );
                              }
                              // By default, show a loading spinner
                              return Center(child: CircularProgressIndicator());
                            },
                          ),
                        ),
                        height: pageHeight * 0.12,
                        width: pageWidth * 0.4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        )))),
            SizedBox(
              height: pageHeight * 0.007,
            ),
            _buildUpdateCard('Updates', '', pageHeight, pageWidth, context),
          ])
        ]),
        SizedBox(
          height: 100,
        )
      ],
    );
  }

  Widget _buildCard(
      String title, double pageHeight, double pageWidth, BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {
          Navigator.pushNamed(context, '/' + title);
        },
        child: Card(
            color: Color(0xff12254d),
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            child: Container(
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Oswald',
                        fontSize: pageHeight * 0.04),
                  ),
                ),
                height: pageHeight * 0.1,
                width: pageWidth * 0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ))));
  }

  Widget _buildUpdateCard(String title, String imageUrl, double pageHeight,
      double pageWidth, BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {
          Navigator.pushNamed(context, '/' + title);
        },
        child: Card(
            color: Colors.white,
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                      image: AssetImage(
                        'assets/home/1.jpg',
                      ))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Story",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                          fontSize: pageHeight * 0.07),
                    ),
                    Text(
                      "Live the Game!",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                          fontSize: pageHeight * 0.04),
                    )
                  ]),
              height: pageHeight * 0.31,
              width: pageWidth * 0.4,
            )));
  }
}

Future<Score> fetchScore() async {
  final response = await http.get(
      'https://firestore.googleapis.com/v1/projects/godcrampy-world-cup/databases/(default)/documents/score');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return Score.fromJson(json.decode(response.body)['documents'][0]['fields']);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

class Score {
  final String content;

  Score({this.content});

  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      content: json['content']['stringValue'],
    );
  }
}
