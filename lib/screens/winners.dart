import 'package:flutter/material.dart';

class WinnersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff12245d),
        title: Text(
          'Winners',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildPlayerTile('West Indies', 1975, Colors.brown, Colors.yellow),
          _buildPlayerTile('West Indies', 1979, Colors.brown, Colors.yellow),
          _buildPlayerTile('India', 1983, Colors.blue, Colors.orange),
          _buildPlayerTile('Australia', 1987, Colors.yellow, Colors.green),
          _buildPlayerTile('Pakistan', 1992, Colors.green, Colors.white),
          _buildPlayerTile('Sri Lanka', 1996, Colors.blueAccent, Colors.yellow),
          _buildPlayerTile('Australia', 1999, Colors.yellow, Colors.green),
          _buildPlayerTile('Australia', 2003, Colors.yellow, Colors.green),
          _buildPlayerTile('Australia', 2007, Colors.yellow, Colors.green),
          _buildPlayerTile('India', 2011, Colors.blue, Colors.orange),
          _buildPlayerTile('Australia', 2015, Colors.yellow, Colors.green),
          _buildPlayerTile('???', 2019, Colors.grey, Colors.white),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

Widget _buildPlayerTile(
  String name,
  int year,
  Color backgroundColor,
  Color textColor,
) {
  return ListTile(
      title: Row(children: [
        Text(
          name + " ",
        ),
      ]),
      trailing: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), color: backgroundColor),
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
        child: Text(
          year.toString(),
          style: TextStyle(color: textColor),
        ),
      ));
}
