import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class StoriesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StoriesState();
  }
}

class StoriesState extends State<StoriesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff12245d),
          title: Text(
            'Story',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      FutureBuilder<Post>(
                        future: fetchPost(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Image.network(
                              snapshot.data.image,
                              width: MediaQuery.of(context).size.width * 0.96,
                              height: MediaQuery.of(context).size.height * 0.3,
                              fit: BoxFit.cover,
                            );
                          } else if (snapshot.hasError) {
                            return Text("${snapshot.error}");
                          }
                          // By default, show a loading spinner
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                      ListTile(
                        subtitle: FutureBuilder<Post>(
                          future: fetchPost(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data.content.replaceAll("\\n", "\n"),
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.027),
                              );
                            } else if (snapshot.hasError) {
                              return Text("${snapshot.error}");
                            }
                            // By default, show a loading spinner
                            return Center(child: CircularProgressIndicator());
                          },
                        ),
                        title: FutureBuilder<Post>(
                          future: fetchPost(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data.title,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.04),
                              );
                            } else if (snapshot.hasError) {
                              return Text("${snapshot.error}");
                            }
                            // By default, show a loading spinner
                            return Center(child: CircularProgressIndicator());
                          },
                        ),
                      ),
                    ],
                  ),
                )),
            FlatButton(
              child: Text('Read More Stories'),
              onPressed: _launchURL,
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}

Future<Post> fetchPost() async {
  final response = await http.get(
      'https://firestore.googleapis.com/v1/projects/godcrampy-world-cup/databases/(default)/documents/stories');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return Post.fromJson(json.decode(response.body)['documents'][0]['fields']);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final String title;
  final String content;
  final String image;

  Post({this.image, this.title, this.content});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title']['stringValue'],
      image: json['image']['stringValue'],
      content: json['content']['stringValue'],
    );
  }
}

_launchURL() async {
  const url = 'https://cricketadda.home.blog/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
