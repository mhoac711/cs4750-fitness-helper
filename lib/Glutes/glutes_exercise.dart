
import 'package:flutter/material.dart';
import '../Settings/settings_page.dart';
import 'difficult_glutes.dart';
import 'easy_glutes.dart';
import 'moderate_glutes.dart';

class GlutesExercise extends StatefulWidget {
  const GlutesExercise({Key? key}) : super(key: key);

  @override
  _GlutesExerciseState createState() => _GlutesExerciseState();
}

class _GlutesExerciseState extends State<GlutesExercise> {
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'EASY',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
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
                        MaterialPageRoute(builder: (context) => EasyGlutes())
                    );
                  },
                  icon: Icon(IconData(57855, fontFamily: 'MaterialIcons'),
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
                            image:
                            AssetImage('assets/images/easy_glute1.jpg')),                      ),
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
                              image:
                              AssetImage('assets/images/easy_glute2.jpg')),
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
                              image:
                              AssetImage('assets/images/easy_glute1.jpg')),
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
                    fontSize: 25,
                    fontFamily: 'PermanentMarker',
                    fontWeight: FontWeight.normal,
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
                        MaterialPageRoute(builder: (context) => ModerateGlutes())
                    );
                  },
                  icon: Icon(IconData(57855, fontFamily: 'MaterialIcons'),
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
                              image:
                              AssetImage('assets/images/moderate_glute1.jpg')),
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
                              image:
                              AssetImage('assets/images/moderate_glute2.jpg')),
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
                              image:
                              AssetImage('assets/images/moderate_glute1.jpg')),
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
                        MaterialPageRoute(builder: (context) => DifficultGlutes())
                    );
                  },
                  icon: Icon(IconData(57855, fontFamily: 'MaterialIcons'),
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
                              image:
                              AssetImage('assets/images/difficult_glute1.jpg')),
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
                              image:
                              AssetImage('assets/images/difficult_glute2.jpg')),
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
                              image:
                              AssetImage('assets/images/difficult_glute1.jpg')),
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
