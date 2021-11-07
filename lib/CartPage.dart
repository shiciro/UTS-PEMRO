import 'package:flutter/material.dart';
import 'package:widget/constants.dart';
import 'package:provider/provider.dart';
import 'providers/transferVariables.dart' as global;
import 'providers/global.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //void _update() {
  //  setState(() {
  //    global.listQuantity[global.Q] = global.transfer;
  //  });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("profilePage");
                },
                child: Icon(Icons.account_circle),
              )),
        ],
        */
        title: Text("My Cart"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(children: [
        for (int i = 0; i < context.read<Database>().listPrice.length; i++)
          if (context.read<Database>().listQuantity[i] > 0)
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
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
                            ],
                          )))
                ],
              ),
            ),
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
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
          padding: EdgeInsets.symmetric(vertical: 20),
          child: ElevatedButton(
              onPressed: () {},
              child: Text("Check Out"),
              style: ElevatedButton.styleFrom(
                  primary: consPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(29))))),
        ),
      ]),
    );
  }
}
