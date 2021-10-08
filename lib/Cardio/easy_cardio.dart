import 'package:cs4750_fitness_helper/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class EasyCardio extends StatefulWidget {
  const EasyCardio({Key? key}) : super(key: key);

  @override
  _EasyCardioState createState() => _EasyCardioState();
}

class _EasyCardioState extends State<EasyCardio> {
  var easyCardioList = [
    {'name': 'High Knees', 'reps': '30-45 secs'},
    {'name': 'Butt Kicks', 'reps': '30-45 secs'},
    {'name': 'Lateral Shuffle', 'reps': '30-45 secs'},
    {'name': 'Crab Walk', 'reps': '20-30 secs'},
    {'name': 'Speed Skaters', 'reps': '15-25'},
    {'name': 'Jumping Jacks', 'reps': '30-60 secs'},
    {'name': 'Toe Taps', 'reps': '30-60 secs'},
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
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'EASY',
              style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontWeight: FontWeight.normal,
                fontSize: 35,
                color: Colors.tealAccent[100],

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
                      fontFamily: 'PermanentMarker',
                      fontWeight: FontWeight.normal,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                      color: Colors.tealAccent[100],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    'Reps/Time',
                    style: TextStyle(
                      fontFamily: 'PermanentMarker',
                      fontWeight: FontWeight.normal,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                      color: Colors.tealAccent[100],

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 95,
            child: ListView.builder(
              itemCount: easyCardioList.length,
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
                                  '${easyCardioList[index]['name']}',
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
                                    '${easyCardioList[index]['reps']}',
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

