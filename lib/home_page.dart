import 'package:flutter/material.dart';
import 'Abs/ab_exercise.dart';
import 'Arms/arms_exercise.dart';
import 'Cardio/cardio_exercise.dart';
import 'Chest/chest_exercise.dart';
import 'Glutes/glutes_exercise.dart';
import 'Legs/legs_exercise.dart';
import 'Settings/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 40),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'ABS',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'LobsterTwo',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AbExercise()));
                    },
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 20, bottom: 15, top: 40),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.cyan[200]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'CHEST',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'LobsterTwo',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChestExercise()));
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.cyan[200]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'LEGS',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'LobsterTwo',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LegExercise()));
                    },
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 20, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'ARMS',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'LobsterTwo',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArmsExercise()));
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'CARDIO',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'LobsterTwo',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardioExercise()));
                    },
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 20, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.cyan[200]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'GLUTES',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'LobsterTwo',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GlutesExercise()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}