import 'package:flutter/material.dart';
import 'settings_page.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
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
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 25, top: 25, bottom: 30),
            child: Text(
              'Email: sleepy@gmail.com',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 25, top: 10, bottom: 30),
            child: Text(
              'Password: 123456',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      )

    );
  }
}
