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
            margin: EdgeInsets.only(top:15, left: 15, right: 15),
              child: Image.asset(
                'assets/images/me.JPG',
                height: 350,
                width: 450,
                fit: BoxFit.fitHeight,
              ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20,left: 25),
            child: Text(
                'Name: Max Hoac',
            style: TextStyle(
              fontFamily: 'LobsterTwo',
              fontSize: 20,
              color: Colors.lightBlue[900],
            ),
            ),
          )
          // Image(
          //   image: AssetImage('assets/images/me_picture.jpg'),
          //   fit: BoxFit.cover,
          // )
        ],
      ),

    );
  }
}
