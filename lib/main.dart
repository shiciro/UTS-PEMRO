import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget/BuyPage.dart';
import 'package:widget/HomePage.dart';
import 'package:widget/LoginPage.dart';
import 'package:widget/SignupPage.dart';
import 'package:widget/providers/global.dart';

//void main() {
//  runApp(MyApp());
//}

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Database()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => new LoginPage(),
        "buyPage": (BuildContext context) => new BuyPage(),
        "homePage": (BuildContext context) => new MyHomePage(),
        "signupPage": (BuildContext context) => new SignUpScreen(),
      },
    );
  }
}