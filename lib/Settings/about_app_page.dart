import 'package:flutter/material.dart';
import 'settings_page.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({Key? key}) : super(key: key);

  @override
  _AboutAppPageState createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
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
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 0, top: 35, bottom: 5),
              child: Text(
                'App Description: ',
                style: TextStyle(
                  fontFamily: 'PermanentMarker',
                  fontSize: 28,
                  color: Colors.tealAccent[200],
                  decoration: TextDecoration.underline,

                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 25, top: 0, bottom: 10, right: 25),
              child: Text(
                'The purpose of this app is to provide users with an easy way of accessing and finding exercises that fit their level of experience and challenge themselves with exercises that have an increased difficulty.',
                style: TextStyle(
                  fontFamily: 'PermanentMarker',
                  fontSize: 22,
                  color: Colors.tealAccent[100],
                ),
              ),
            ),
          ],
        )
    );
  }
}
