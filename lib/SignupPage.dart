import 'package:flutter/material.dart';

import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';
import 'constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Sign Up",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Create new account",
                    style: TextStyle(fontSize: 25, color: Colors.grey)),
              ),
            ]),
          ),
          SizedBox(height: 25),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Confirm Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text("Sign In"),
                style: ElevatedButton.styleFrom(
                    primary: consPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(29))))),
          ),
        ],
      ),
    );
  }
}
