import 'package:flutter/material.dart';
import 'package:widget/main.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import 'providers/transferVariables.dart' as global;
import 'providers/global.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({Key? key}) : super(key: key);

  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  //int _jumlah = global.listQuantity[global.Q];

  //void _confirm() {
  //  setState(() {
  //    global.listQuantity[global.Q] = global.transfer;
  //  });
  //}
  int urutan = global.Q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Info"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image:
                      AssetImage(context.read<Database>().listImage[global.Q]),
                  fit: BoxFit.fill),
              shape: BoxShape.rectangle),
        ),
        Container(
            child: Text(
          context.read<Database>().listItem[global.Q],
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        )),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 100,
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
              IconButton(
                onPressed: () {
                  context.read<Database>().reduction();
                },
                icon: Icon(Icons.exposure_minus_1),
              ),
              Text("Jumlah barang " +
                  context.watch<Database>().listQuantity[global.Q].toString()),
              IconButton(
                onPressed: () {
                  context.read<Database>().increment();
                },
                icon: Icon(Icons.plus_one),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("homePage");
                },
                child: Text("Shop Now"),
                style: ElevatedButton.styleFrom(
                    primary: consPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(29))))),
          ),
        ),
      ]),
    );
  }
}
