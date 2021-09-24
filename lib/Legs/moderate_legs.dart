import 'package:cs4750_fitness_helper/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class ModerateLegs extends StatefulWidget {
  const ModerateLegs({Key? key}) : super(key: key);

  @override
  _ModerateLegsState createState() => _ModerateLegsState();
}

class _ModerateLegsState extends State<ModerateLegs> {
  var modLegList = [
    {'name': 'Squat Jump', 'reps': '30-45 secs'},
    {'name': 'Dead-lift', 'reps': '10-12'},
    {'name': 'Dumbbell Walking Lunge', 'reps': '10-15'},
    {'name': 'Kettlebell Swing', 'reps': '10-12'},
    {'name': 'Sled Push', 'reps': '45-60 secs'},
    {'name': 'Single Leg Glute Bridge', 'reps': '8-10'},
    {'name': 'Box Jump', 'reps': '5-10'},
    {'name': 'Wall Sit', 'reps': '30-60 secs'},
  ];
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
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'MODERATE',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'LobsterTwo',
                color: Colors.tealAccent[400],

              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Exercise',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'LobsterTwo',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.tealAccent[400],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    'Reps/Time',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'LobsterTwo',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.tealAccent[400],

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 95,
            child: ListView.builder(
              itemCount: modLegList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    onTap: () {
                      print("The item clicked is " + index.toString());
                    },
                    title: Container(
                        height: 50,
                        margin: EdgeInsets.only(right: 20),
                        child: Center(
                            child: Row(
                              children: [
                                Text(
                                  '${modLegList[index]['name']}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'LobsterTwo',
                                    color: Colors.blue[50],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left:20),
                                  child: Text(
                                    '${modLegList[index]['reps']}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'LobsterTwo',
                                      color: Colors.blue[50],
                                    ),
                                  ),
                                )
                              ],
                            ))));
              },
            ),
          ),

        ],
      ),
    );
  }
}
