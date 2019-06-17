import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SchedulePageState();
  }
}

class SchedulePageState extends State {
  bool isSort = false;
  String whichSort = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff12245d),
          title: Text(
            'Schedule',
            style: TextStyle(fontSize: 26),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.sort),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return ListView(
                        children: <Widget>[
                          // Row(children:[
                          ListTile(
                            onTap: () {
                              isSort = false;
                              whichSort = '';
                              Navigator.pop(context);
                              setState(() {});
                            },
                            leading: Icon(Icons.all_inclusive),
                            title: Text('All'),
                          ),
                          _buildListTile("India", 'in'),
                          _buildListTile("Afghanistan", 'af'),
                          _buildListTile("Australia", 'au'),
                          _buildListTile("Bangladesh", 'bn'),
                          _buildListTile("England", 'en'),
                          _buildListTile("New Zealand", 'nz'),
                          _buildListTile("Pakistan", 'pk'),
                          _buildListTile("South Africa", 'sa'),
                          _buildListTile("Sri Lanka", 'sl'),
                          _buildListTile("West Indies", 'wi'),

                          SizedBox(
                            height: 120,
                          )
                        ],
                      );
                    });
              },
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return ListView(children: <Widget>[
            _buildCard('England', 'South Africa', 'en', 'sa', '30 May'),
            _buildCard('Pakistan', 'West Indies', 'pk', 'wi', '31 May'),
            _buildCard('New Zealand', 'Sri Lanka', 'nz', 'sl', '1 June'),
            _buildCard('Australia', 'Afghanistan', 'au', 'af', '1 June'),
            _buildCard('Bangladesh', 'South Africa', 'bn', 'sa', '2 June'),
            _buildCard('England', 'Pakistan', 'en', 'pk', '3 June'),
            _buildCard('Afghanistan', 'Sri Lanka', 'af', 'sl', '4 June'),
            _buildCard('India', 'South Africa', 'in', 'sa', '5 June'),
            _buildCard('Bangladesh', 'New Zealand', 'bn', 'nz', '5 June'),
            _buildCard('Australia', 'West Indies', 'au', 'wi', '6 June'),
            _buildCard('Pakistan', 'Sri Lanka', 'pk', 'sl', '7 June'),
            _buildCard('England', 'Bangladesh', 'en', 'bn', '8 June'),
            _buildCard('Afghanistan', 'New Zealand', 'af', 'nz', '8 June'),
            _buildCard('Australia', 'India', 'au', 'in', '9 June'),
            _buildCard('South Africa', 'West Indies', 'sa', 'wi', '10 June'),
            _buildCard('Bangladesh', 'Sri Lanka', 'bn', 'sl', '11 June'),
            _buildCard('Australia', 'Pakistan', 'au', 'pk', '12 June'),
            _buildCard('India', 'New Zealand', 'in', 'nz', '13 June'),
            _buildCard('England', 'West Indies', 'en', 'wi', '14 June'),
            _buildCard('Australia', 'Sri Lanka', 'au', 'sl', '15 June'),
            _buildCard('Afghanistan', 'South Africa', 'af', 'sa', '15 June'),
            _buildCard('India', 'Pakistan', 'in', 'pk', '16 June'),
            _buildCard('Bangladesh', 'West Indies', 'bn', 'wi', '17 June'),
            _buildCard('England', 'Afghanistan', 'en', 'af', '18 June'),
            _buildCard('New Zealand', 'South Africa', 'nz', 'sa', '19 June'),
            _buildCard('Australia', 'Bangladesh', 'au', 'bn', '20 June'),
            _buildCard('England', 'Sri Lanka', 'en', 'sl', '21 June'),
            _buildCard('Afghanistan', 'India', 'af', 'in', '22 June'),
            _buildCard('New Zealand', 'West Indies', 'nz', 'wi', '22 June'),
            _buildCard('Pakistan', 'South Africa', 'pk', 'sa', '23 June'),
            _buildCard('Afghanistan', 'Bangladesh', 'af', 'bn', '24 June'),
            _buildCard('England', 'Australia', 'en', 'au', '25 June'),
            _buildCard('New Zealand', 'Pakistan', 'nz', 'pk', '26 June'),
            _buildCard('India', 'West Indies', 'in', 'wi', '27 June'),
            _buildCard('South Africa', 'Sri Lanka', 'sa', 'sl', '28 June'),
            _buildCard('Afghanistan', 'Pakistan', 'af', 'pk', '29 June'),
            _buildCard('New Zealand', 'Australia', 'nz', 'au', '29 June'),
            _buildCard('England', 'India', 'en', 'in', '30 June'),
            _buildCard('Sri Lanka', 'West Indies', 'sl', 'wi', '1 July'),
            _buildCard('Bangladesh', 'India', 'bn', 'in', '2 July'),
            _buildCard('England', 'New Zealand', 'en', 'nz', '3 July'),
            _buildCard('Afghanistan', 'West Indies', 'af', 'wi', '4 July'),
            _buildCard('Bangladesh', 'Pakistan', 'bn', 'pk', '5 July'),
            _buildCard('Sri Lanka', 'India', 'sl', 'in', '6 July'),
            _buildCard('Australia', 'South Africa', 'au', 'sa', '6 July'),
            _buildCard('Qualifier 1', 'Qualifier 4', 'qm', 'qm', '9 July'),
            _buildCard('Qualifier 2', 'Qualifier 3', 'qm', 'qm', '11 July'),
            _buildCard('Finalist 1', 'Finalist 2', 'qm', 'qm', '14 July'),
            SizedBox(
              height: 100,
            )
          ]);
        }));
  }

  Widget _buildCard(
      String team1, String team2, String img1, String img2, String date) {
    if (isSort) {
      if (img1 != whichSort && img2 != whichSort) {
        return Container();
      }
    }
    return Card(
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: ListTile(
          title: Center(child: Text(team1 + ' vs ' + team2)),
          leading: Image.asset(
            'assets/teams/' + img1 + '.png',
          ),
          trailing: Image.asset(
            'assets/teams/' + img2 + '.png',
          ),
          subtitle: Center(child: Text(date)),
        ));
  }

  Widget _buildListTile(String title, String key) {
    return ListTile(
      onTap: () {
        isSort = true;
        whichSort = key;
        Navigator.pop(context);
        setState(() {});
      },
      leading: Image(
        image: AssetImage('assets/teams/' + key + '.png'),
        width: 35,
        height: 35,
        color: null,
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
      ),
      title: Text(title),
    );
  }
}
