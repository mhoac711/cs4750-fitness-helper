import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../home_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                color: Colors.lightBlue[900]),
            child: IconButton(
              alignment: Alignment.center,
              icon: Container(
                  child: Text(
                    'F/H',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'LobsterTwo',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[100],
                    ),
                  )
              ),
              iconSize: 135,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 10),
            child: TextField(
              controller: emailController,
              obscureText: false,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                  const BorderSide(color: Colors.deepPurple, width: 1.5),
                ),
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 10),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                  const BorderSide(color: Colors.deepPurple, width: 1.5),
                ),
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          RaisedButton(
              color: Colors.deepPurpleAccent[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.lightBlue[900],
                    fontSize: 16,
                    fontFamily: 'LobsterTwo'
                ),
              ),
              onPressed: () {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text, password: passwordController.text)
                .then((value){
                  print("Login Successful");
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }).catchError((error){
                  print("Failed to login");
                  print(error.toString());
                });
              }
          ),
          FlatButton(
              child: Text(
                "New Account",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'LobsterTwo',
                  color: Colors.lightBlue[900],
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              }),
        ],
      ),
    );
  }
}
