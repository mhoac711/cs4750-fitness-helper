import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 40),
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
            )),
            iconSize: 135,
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 15),
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
          margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 20),
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
        Container(
          margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 20),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.deepPurple, width: 1.5),
              ),
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: RaisedButton(
              color: Colors.deepPurpleAccent[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.lightBlue[900],
                ),
              ),
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
                Future<AuthResult> result = FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text);
                result.then((value) {
                  print("Sign up success");
                });
                result.catchError((error) {
                  print("Failed to sign up");
                });
                var timeStamp = new DateTime.now().millisecondsSinceEpoch;
                FirebaseDatabase.instance
                    .reference()
                    .child("account/account" + timeStamp.toString())
                    .set({
                  "email": emailController.text,
                  "password": passwordController.text,
                }).then((value) {
                  print("Added Account");
                }).catchError((error) {
                  print("Failed to add. " + error.toString());
                });

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          )
        ])
      ]),
    );
  }
}
