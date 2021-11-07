import 'package:flutter/material.dart';
import 'package:widget/constants.dart';
import 'package:widget/main.dart';
import 'package:provider/provider.dart';
import 'providers/transferVariables.dart' as global;
import 'providers/global.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //void _update() {
  //  setState(() {
  //    global.listQuantity[global.Q] = global.transfer;
  //  });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: consPrimaryColor),
                child: Text("Menu")),
            ListTile(
                title: const Text('Your Cart'),
                onTap: () {
                  Navigator.of(context).pushNamed("cartPage");
                  //Navigator.pop(context);
                }),
            ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.of(context).pushNamed("profilePage");
                  //Navigator.pop(context);
                })
          ],
        ),
      ),
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        /*
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("cartPage");
                },
                child: Icon(Icons.shopping_bag),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("profilePage");
                },
                child: Icon(Icons.account_circle),
              )),
        ],*/
        title: Text("Main Menu"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Row(children: [
            SizedBox(
              height: 30,
            ),
            Text("Game",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
            Text("Style",
                style: TextStyle(
                    fontSize: 40,
                    color: consPrimaryColor,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
        for (int i = 0; i < context.read<Database>().listPrice.length; i++)
          //if (context.read<Database>().listQuantity[i] > 0)
          Container(
            height: 130,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ]),
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage(context.read<Database>().listImage[i]),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle),
                ),
                Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        margin: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                        width: 150,
                        height: 120,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.read<Database>().listItem[i],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text('Rp ' +
                                context
                                    .read<Database>()
                                    .listPrice[i]
                                    .toString()),
                            Text(
                              'Amount in cart ' +
                                  context
                                      .watch<Database>()
                                      .listQuantity[i]
                                      .toString(),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  global.Q = i;
                                  Navigator.of(context).pushNamed("buyPage");
                                },
                                child: Text('Shop Now'),
                                style: ElevatedButton.styleFrom(
                                  primary: consPrimaryColor,
                                )),
                          ],
                        )))
              ],
            ),
          ),
        /*  
        Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),

          child: Row(
            children: [
              Text("Total " +
                  ((context.read<Database>().listPrice[0] *
                              context.read<Database>().listQuantity[0]) +
                          (context.read<Database>().listPrice[1] *
                              context.read<Database>().listQuantity[1]) +
                          (context.read<Database>().listPrice[2] *
                              context.read<Database>().listQuantity[2]))
                      .toString())
            ],
          ),
        ),*/
      ]),
    );
  }
}
