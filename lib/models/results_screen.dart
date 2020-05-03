import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homebrew/models/chooseDeviceScreen.dart';

import 'coffee_converter.dart';

class Results extends StatefulWidget {
  CoffeeConverter cc;

  Results(this.cc);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    int gramsOfCoffee = widget.cc.getGramsCoffee.round();
    int gramsOfWater = widget.cc.getGramsWater.round();
    String grindSize = widget.cc.grindSize;

    return Scaffold(
      appBar: AppBar(  leading: BackButton(
     color: Color.fromRGBO(76, 116, 139, 1)
   ),
        title: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(76, 116, 139, 1), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,14.0,8.0,8),
                      child: Text(
                        "Recommended",
                        key: Key("recommended-text"),
                        style: TextStyle(fontSize: 20, letterSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,0,8,30),
                      child: Divider(
                        color: Color.fromRGBO(76, 116, 139, 1),
                        thickness: 1.5,
                      ),
                    ),
                    Text("${gramsOfCoffee}g - $grindSize ground coffee", style: TextStyle(fontSize: 16, letterSpacing: 2),),
                    Text("${gramsOfWater}g - water", style: TextStyle(fontSize: 16, letterSpacing: 2)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                      child: Text(
                        "Enjoy your delicious coffee.",
                        style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w300, fontSize: 14, letterSpacing: 2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RaisedButton(
              key: Key("done-button"),
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            color: Color.fromRGBO(76, 116, 139, 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Text("Done", style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => choose_device_screen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
