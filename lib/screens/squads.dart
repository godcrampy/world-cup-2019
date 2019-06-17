import 'package:flutter/material.dart';

Widget _buildPlayerTile(
  String name,
  int price,
  Color backgroundColor,
  Color textColor,
) {
  return ListTile(
      title: Row(children: [
        Text(
          name + " ",
        ),
      ]),
      leading: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), color: backgroundColor),
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
        child: Text(
          price.toString(),
          style: TextStyle(color: textColor),
        ),
      ));
}

class SquadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff12245d),
          title: Text(
            'Squads',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: ListView(children: [
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/af.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "Afghanistan",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                    'Gulbadin Naib (c)', 11, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Rashid Khan (vc)', 19, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Aftab Alam', 55, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Asghar Afgan', 44, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Dawlat Zadran', 10, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Hamid Hassan', 66, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Hashmatullah Shahidi', 50, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Hazratullah Zazai', 3, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Mohammad Nabi', 7, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Mohammad Shahzad (wk)', 77, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Mujeeb Ur Rahman', 88, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Hazratullah Zazai', 3, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Noor Ali Zadran', 15, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Rahmat Sha', 08, Colors.red, Colors.green[200]),
                _buildPlayerTile(
                    'Samiullah Shinwari', 45, Colors.red, Colors.green[200])
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/au.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "Australia",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                    'Aaron Finch (c)', 5, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Pat Cumins (vc)', 30, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Alex Carey (wk)', 4, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Jason Behrendorff', 65, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Nathan Coulter-Nile', 6, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Usman Khwaja', 1, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Nathan Lyon', 67, Colors.yellow, Colors.green),
                _buildPlayerTile('Shaun Marsh', 9, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Glenn Maxwell', 32, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Kane Richardson', 47, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Steve Smith', 49, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Mitchell Starc', 56, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'Marcus Stoinis', 17, Colors.yellow, Colors.green),
                _buildPlayerTile(
                    'David Warner', 31, Colors.yellow, Colors.green),
                _buildPlayerTile('Adam Zampa', 63, Colors.yellow, Colors.green)
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/bn.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "Bangladesh",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                    "Mashrafe Mortaza (c)", 2, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Shakib Al Hasan (vc)", 75, Colors.green, Colors.red),
                _buildPlayerTile("Tamim Iqbal", 28, Colors.green, Colors.red),
                _buildPlayerTile("Liton Das", 16, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Mushfiqur Rahim (wk)", 15, Colors.green, Colors.red),
                _buildPlayerTile("Mahmudullah", 30, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Mohammad Mithun", 8, Colors.green, Colors.red),
                _buildPlayerTile("Sabbir Rahman", 1, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Mehedi Hasan Miraz", 53, Colors.green, Colors.red),
                _buildPlayerTile("Soumya Sarkar", 59, Colors.green, Colors.red),
                _buildPlayerTile("Rubel Hossain", 34, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Mohammad Saifuddin", 74, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Mosaddek Hossain", 32, Colors.green, Colors.red),
                _buildPlayerTile(
                    "Mustafizur Rahman", 90, Colors.green, Colors.red),
                _buildPlayerTile("Abu Jayed", 14, Colors.green, Colors.red),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/en.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "England",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                    "Eoin Morgan (c)", 16, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Jos Buttler (vc, wk)", 63, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Moeen Ali", 18, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Jonny Bairstow", 51, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Tom Curran", 59, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Liam Dawson", 83, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Liam Plunkett", 17, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Adil Rashid", 95, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Joe Root", 66, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Jason Roy", 20, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Ben Stokes", 55, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Jofra Archer", 14, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Chris Woakes", 19, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "Mark Wood", 33, Colors.redAccent, Colors.white),
                _buildPlayerTile(
                    "James Vince", 14, Colors.redAccent, Colors.white),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/in.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "India",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                    "Virat Kohli (c)", 18, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Rohit Sharma (vc)", 45, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Shikhar Dhawan", 25, Colors.blue, Colors.orange),
                _buildPlayerTile("K. L. Rahul", 1, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Vijay Shankar", 59, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "MS Dhoni (wk)", 7, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Kedar Jadhav", 81, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Dinesh Karthik", 21, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Yuzvendra Chahal", 3, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Kuldeep Yadav", 23, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Bhuvneshwar Kumar", 15, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Jasprit Bumrah", 93, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Hardik Pandya", 33, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Ravindra Jadeja", 8, Colors.blue, Colors.orange),
                _buildPlayerTile(
                    "Mohammed Shami", 11, Colors.blue, Colors.orange),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/nz.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "New Zealand",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                  "Kane Williamson (c)",
                  22,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Tom Latham (vc, wk)",
                  48,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Tim Southee",
                  38,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Tom Blundell",
                  66,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Trent Boult",
                  18,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Colin de Grandhomme",
                  77,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Lockie Ferguson",
                  87,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Martin Guptill",
                  31,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Matt Henry",
                  21,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Colin Munro",
                  82,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "James Neesham",
                  50,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Henry Nicholls",
                  86,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Mitchell Santner",
                  74,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Ish Sodhi",
                  61,
                  Colors.black,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Ross Taylor",
                  3,
                  Colors.black,
                  Colors.white,
                ),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/pk.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "Pakistan",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                  "Sarfaraz Ahmed (c, wk)",
                  54,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Babar Azam (vc)",
                  56,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Asif Ali",
                  45,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Fakhar Zaman",
                  39,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Haris Sohail",
                  89,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Imam-ul-Haq",
                  26,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Mohammad Hafeez",
                  8,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Shadab Khan",
                  29,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Shoaib Malik",
                  18,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Imad Wasim",
                  9,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Hasan Ali",
                  32,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Mohammad Amir",
                  5,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Mohammad Hasnain",
                  87,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Shaheen Afridi",
                  40,
                  Colors.green,
                  Colors.white,
                ),
                _buildPlayerTile(
                  "Wahab Riaz",
                  47,
                  Colors.green,
                  Colors.white,
                ),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/sa.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "South Africa",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                  "Faf du Plessis (c)",
                  18,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Quinton de Kock (vc, wk)",
                  12,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Hashim Amla",
                  1,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Aiden Markram",
                  4,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Rassie van der Dussen",
                  72,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "David Miller",
                  10,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "JP Duminy",
                  21,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Andile Phehlukwayo",
                  23,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Dwaine Pretorius",
                  29,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Dale Steyn",
                  8,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Kagiso Rabada",
                  25,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Lungi Ngidi",
                  22,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Chris Morris",
                  2,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Imran Tahir",
                  99,
                  Colors.green,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Tabraiz Shamsi",
                  90,
                  Colors.green,
                  Colors.yellow,
                ),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/sl.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "Sri Lanka",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                  "Dimuth Karunaratne (c)",
                  21,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Dhananjaya de Silva (vc)",
                  75,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Angelo Mathews",
                  69,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Avishka Fernando",
                  28,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Lahiru Thirimanne",
                  66,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Kusal Mendis",
                  2,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Kusal Perera (wk)",
                  55,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Thisara Perera",
                  1,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Isuru Udana",
                  17,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Jeffrey Vandersay",
                  46,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Jeevan Mendis",
                  88,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Milinda Siriwardana",
                  57,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Lasith Malinga",
                  99,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Suranga Lakmal",
                  82,
                  Colors.blue,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Nuwan Pradeep",
                  63,
                  Colors.blue,
                  Colors.yellow,
                ),
              ]),
          ExpansionTile(
              leading: Image.asset(
                'assets/teams/wi.png',
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              title: Text(
                "West Indies",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              children: [
                _buildPlayerTile(
                  "Jason Holder (c)",
                  8,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Chris Gayle (vc)",
                  45,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Carlos Brathwaite",
                  26,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Darren Bravo",
                  46,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Sheldon Cottrell",
                  19,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Fabian Allen",
                  97,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Shannon Gabriel",
                  85,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Shimron Hetmyer",
                  2,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Shai Hope",
                  4,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Evin Lewis",
                  17,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Ashley Nurse",
                  5,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Nicholas Pooran (wk)",
                  29,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Kemar Roach",
                  24,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Andre Russell",
                  12,
                  Colors.brown,
                  Colors.yellow,
                ),
                _buildPlayerTile(
                  "Oshane Thomas",
                  42,
                  Colors.brown,
                  Colors.yellow,
                ),
              ]),
          SizedBox(
            height: 100,
          )
        ]));
  }
}
