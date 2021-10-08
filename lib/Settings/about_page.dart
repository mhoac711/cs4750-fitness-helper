import 'package:flutter/material.dart';
import 'settings_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color: Colors.tealAccent[100],
            height: 3.0,
          ),
          preferredSize: Size.fromHeight(3.0),
        ),
        backgroundColor: Colors.deepPurpleAccent[100],
        title: Text(
          'F / H',
          style: TextStyle(
            fontFamily: 'LobsterTwo',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.tealAccent[100],
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage())
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: Colors.deepPurple,
              ),

            ),
            margin: EdgeInsets.only(top:35, left: 15, right: 15),
              child: Image.asset(
                'assets/images/me.JPG',
                height: 300,
                width: 325,
                scale: 70,
                fit: BoxFit.fitWidth,
              ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 15,left: 25),
            child: Text(
                'Name: Max Hoac',
            style: TextStyle(
              fontFamily: 'PermanentMarker',
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.tealAccent[100],
            ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10,left: 25),
            child: Text(
              'Year: 3rd Year',
              style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.tealAccent[100],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10,left: 25),
            child: Text(
              'Major: Computer Science',
              style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.tealAccent[100],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10,left: 25),
            child: Text(
              'Hobbies: Basketball, running, taking care my dog',
              style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.tealAccent[100],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
