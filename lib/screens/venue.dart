import 'package:flutter/material.dart';

class VenuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff12245d),
          title: Text(
            'Venue',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            _buildCard(context, "Edgebaston, Birmingham", 25000, 'ed.jpg'),
            _buildCard(
                context, "Bristol County Ground, Bristol", 17500, 'bs.jpg'),
            _buildCard(context, "Sophia Gardens, Cardiff", 15643, 'sg.jpg'),
            _buildCard(context, "Riverside Ground, Chester-le-Street", 20000,
                'cls.jpg'),
            _buildCard(context, "Headingley, Leeds", 18350, 'ld.jpg'),
            _buildCard(context, "Lord's, London", 28000, 'ls.jpg'),
            _buildCard(context, "The Oval, London", 25500, 'ov.jpeg'),
            _buildCard(context, "Old Trafford, Manchester", 26000, 'ot.jpg'),
            _buildCard(context, "Trent Bridge, Nottingham", 17500, 'tb.jpg'),
            _buildCard(context, "Rose Bowl, Southhampton", 25000, 'rb.jpg'),
            _buildCard(context, "County Ground, Taunton", 12500, 'cg.jpg'),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}

Widget _buildCard(
    BuildContext context, String title, int capacity, String img) {
  return Card(
    elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/grounds/' + img,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
            ),
            ListTile(
              subtitle: Text(
                'Capacity: ' + capacity.toString(),
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02),
              ),
              title: Text(
                title,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.04),
              ),
            ),
          ],
        ),
      ));
}
