
import 'package:flutter/material.dart';
import '../Settings/settings_page.dart';
import 'difficult_chest.dart';
import 'easy_chest.dart';
import 'moderate_chest.dart';

class ChestExercise extends StatefulWidget {
  const ChestExercise({Key? key}) : super(key: key);

  @override
  _ChestExerciseState createState() => _ChestExerciseState();
}

class _ChestExerciseState extends State<ChestExercise> {
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'EASY',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(top: 20, right: 35),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EasyChest())
                    );
                  },
                  icon: Icon(
                    const IconData(57855, fontFamily: 'MaterialIcons'),
                    size: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                            image: AssetImage('assets/images/easy_chest.jpg')),
                      ),
                    ),
                    iconSize: 75,
                    onPressed: (){
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.tealAccent[100],
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/easy_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                    image: AssetImage('assets/images/easy_chest.jpg')),

    ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),

              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'MODERATE',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(top: 20, right: 35),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ModerateChest())
                    );
                  },
                  icon: Icon(
                    const IconData(57855, fontFamily: 'MaterialIcons'),
                    size: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    color: Colors.tealAccent[400],
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/moderate_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    color: Colors.tealAccent[400],
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/moderate_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    color: Colors.tealAccent[400],
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/moderate_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),

              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'DIFFICULT',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(top: 20, right: 35),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DifficultChest())
                    );
                  },
                  icon: Icon(
                    const IconData(57855, fontFamily: 'MaterialIcons'),
                    size: 25,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.deepPurple[800]
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/difficult_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.deepPurple[800]
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/difficult_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.deepPurple[800]
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            alignment: FractionalOffset.center,
                              image: AssetImage('assets/images/difficult_chest.jpg')),

                      ),
                    ),
                    iconSize: 75,

                    onPressed: (){

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
