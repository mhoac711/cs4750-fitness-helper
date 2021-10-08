import 'package:cs4750_fitness_helper/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class DifficultLegs extends StatefulWidget {
  const DifficultLegs({Key? key}) : super(key: key);

  @override
  _DifficultLegsState createState() => _DifficultLegsState();
}

class _DifficultLegsState extends State<DifficultLegs> {
  var diffLegList = [
    {'name': 'Overhead Squat', 'reps': '10-12'},
    {'name': 'Hang Clean', 'reps': '5-8'},
    {'name': 'Thruster', 'reps': '10-12'},
    {'name': 'Elevator Squat', 'reps': '5-10'},
    {'name': 'Heels-Elevated Squat', 'reps': '10-12'},
    {'name': 'Bulgarian Split Squat', 'reps': '15-20'},
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
            fontWeight: FontWeight.bold,
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
              'DIFFICULT',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'PermanentMarker',
                fontWeight: FontWeight.normal,
                color: Colors.deepPurple[800],

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
                      fontFamily: 'PermanentMarker',
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                      color: Colors.deepPurple[800],
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
                      fontFamily: 'PermanentMarker',
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                      color: Colors.deepPurple[800],

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 95,
            child: ListView.builder(
              itemCount: diffLegList.length,
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
                                  '${diffLegList[index]['name']}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'PermanentMarker',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue[50],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left:20),
                                  child: Text(
                                    '${diffLegList[index]['reps']}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'PermanentMarker',
                                      fontWeight: FontWeight.normal,
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
