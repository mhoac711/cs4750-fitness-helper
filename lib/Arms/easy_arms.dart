import 'package:cs4750_fitness_helper/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class EasyArms extends StatefulWidget {
  const EasyArms({Key? key}) : super(key: key);

  @override
  _EasyArmsState createState() => _EasyArmsState();
}

class _EasyArmsState extends State<EasyArms> {
  var easyArmList = [
    {'name': 'Overhead Tricep Extension', 'reps': '10-12'},
    {'name': 'Bicep Curl', 'reps': '10-15'},
    {'name': 'Dumbbell Overhead Press', 'reps': '10-15'},
    {'name': 'Arm Circles', 'reps': '30-45 seconds'},
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
                fontSize: 35,
                fontFamily: 'PermanentMarker',
                fontWeight: FontWeight.normal,
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
              itemCount: easyArmList.length,
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
                                  '${easyArmList[index]['name']}',
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
                                    '${easyArmList[index]['reps']}',
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
