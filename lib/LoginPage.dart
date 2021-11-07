import 'package:flutter/material.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';
import 'constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          height: 130,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            Text(
              "Log In",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ]),
        ), //Text judul Log in
        RoundedInputField(
          hintText: "Your Email",
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
                Navigator.of(context).pushNamed("homePage");
              },
              child: Text("Sign In"),
              style: ElevatedButton.styleFrom(
                  primary: consPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(29))))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Dont Have an Account?",
              style: TextStyle(color: consPrimaryColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("signupPage");
              },
              child: Text(
                "Sign Up!",
                style: TextStyle(
                    color: consPrimaryColor, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    );
  }
}
