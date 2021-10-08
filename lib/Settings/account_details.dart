import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'settings_page.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  var accountList = [];
  _AccountDetailsState(){
    FirebaseDatabase.instance.reference().child("account").once()
        .then((datasnapshot){
      print("Loaded Data");
      print("Key");
      print(datasnapshot.key);
      print("Value:");
      print(datasnapshot.value);
      print("Iterate through accounts:");
      var accountTempList = [];
      datasnapshot.value.forEach((k,v){
        print(k);
        print(v);
        accountTempList.add(v);
      });
      print("Final Account List: ");
      print(accountTempList);
      accountList = accountTempList;
      setState(() {

      });
    }).catchError((error){
      print("failed");
    });
  }
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
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 25, top: 35, bottom: 30),
            child: Text(
              'Email: ',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 25,
                color: Colors.lightBlue[900],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 25, top: 10, bottom: 10),
            child: Text(
              'Password: ',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 25,
                color: Colors.lightBlue[900],
              ),
            ),
          ),
        ],
      )

    );
  }
}
