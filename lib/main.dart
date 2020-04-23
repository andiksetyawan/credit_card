import 'package:flutter/material.dart';
import 'credit_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
        ),
        body: Container(
          color: Colors.grey[100],
          child: Stack(
            children: [
              Container(
                  //color: Color.fromRGBO(52, 53, 64, 1.0),
                  //color: Color.fromRGBO(11,0,0, 1.0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ListView(
                    children: <Widget>[
                      CreditCard(),
                      SizedBox(height: 20.0),
                      // Divider(),
                      Text(
                        "Detail Pembayaran",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 0.0),
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: SizedBox(height: 100.0),
                      ),
                      Card(
                        elevation: 0.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 0.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: SizedBox(height: 200.0),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
