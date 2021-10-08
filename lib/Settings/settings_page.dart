import 'package:cs4750_fitness_helper/Settings/about_app_page.dart';
import 'package:flutter/material.dart';
import 'about_page.dart';
import 'account_details.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              'About:',
              style: TextStyle(
                fontFamily: 'PermanentMarker',
                decoration: TextDecoration.underline,
                fontSize: 30,
                color: Colors.lightBlue[900],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, left: 5),
            child: FlatButton(
                child:Text(
                  "App Description",
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutAppPage())
                  );
                }
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, left: 5),
            child: FlatButton(
                child:Text(
                  "About the Developer",
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage())
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
