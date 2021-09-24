import 'package:cs4750_fitness_helper/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class DifficultChest extends StatefulWidget {
  const DifficultChest({Key? key}) : super(key: key);

  @override
  _DifficultChestState createState() => _DifficultChestState();
}

class _DifficultChestState extends State<DifficultChest> {
  var diffChestList = [
    {'name': 'Single Dumbbell Press', 'reps': '10-12'},
    {'name': 'Weighted Dip', 'reps': '10-20'},
    {'name': 'Push-up Clap', 'reps': '10-25'},
    {'name': 'Decline Barbell Bench Press', 'reps': '8-10'},
    {'name': 'Decline Dumbbell Fly', 'reps': '10-12'},
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
              'DIFFICULT',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'LobsterTwo',
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
                      fontFamily: 'LobsterTwo',
                      fontWeight: FontWeight.bold,
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
                      fontFamily: 'LobsterTwo',
                      fontWeight: FontWeight.bold,
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
              itemCount: diffChestList.length,
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
                                  '${diffChestList[index]['name']}',
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
                                    '${diffChestList[index]['reps']}',
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
