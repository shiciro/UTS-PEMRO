import 'package:flutter/material.dart';

import 'constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('images/elon.png'), fit: BoxFit.fill),
                shape: BoxShape.rectangle),
          ),
          Container(
              child: Text("Elon Musk",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
                style: ElevatedButton.styleFrom(
                    primary: consPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(29))))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text("Log Out"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(29))))),
          )
        ],
      ),
    );
  }
}
