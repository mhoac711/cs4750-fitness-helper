
import 'package:flutter/material.dart';
import '../Settings/settings_page.dart';
import 'difficult_cardio.dart';
import 'easy_cardio.dart';
import 'moderate_cardio.dart';

class CardioExercise extends StatefulWidget {
  const CardioExercise({Key? key}) : super(key: key);

  @override
  _CardioExerciseState createState() => _CardioExerciseState();
}

class _CardioExerciseState extends State<CardioExercise> {
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'EASY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'LobsterTwo',
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
                        MaterialPageRoute(builder: (context) => EasyCardio())
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
                            image: NetworkImage('https://www.outsideonline.com/wp-content/uploads/migrated-images_parent/migrated-images_43/P430082-1-1_illustration-pushup.jpg')),
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
                            image: NetworkImage('https://i.pinimg.com/originals/c6/e1/6a/c6e16a9b9dc7d97b0d4ad78b50e7b424.gif'),
                          )
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
                            image: NetworkImage('https://cdnb.artstation.com/p/assets/images/images/037/471/019/original/digital-artist-russian-twist.gif?1620463601'),
                          )
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
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'LobsterTwo',
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
                        MaterialPageRoute(builder: (context) => ModerateCardio())
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
                            image: NetworkImage('https://i.pinimg.com/originals/c0/d3/c9/c0d3c948ede881f235ee6e6ea97e57b4.gif'),
                          )
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
                            image: NetworkImage('https://www.spotebi.com/wp-content/uploads/2016/01/wood-chop-exercise-illustration-spotebi.gif'),
                          )
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
                            image: NetworkImage('https://www.lakediary.com/wp-content/uploads/2017/02/Flutter-kicks.gif'),
                          )
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
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'LobsterTwo',
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
                        MaterialPageRoute(builder: (context) => DifficultCardio())
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
                            image: NetworkImage('https://personaltrainer.ebhasin.com/upload/Bicycle%20Crunch.gif'),
                          )
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
                            image: NetworkImage('https://i.pinimg.com/originals/fb/a0/32/fba03216f52666e90f227281b48036b4.png'),
                          )
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
                            image: NetworkImage('https://www.spotebi.com/wp-content/uploads/2015/05/v-sit-exercise-illustration.gif'),
                          )
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
