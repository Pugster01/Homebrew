import 'package:flutter/material.dart';
import 'package:homebrew/models/coffee_converter.dart';
import 'package:homebrew/models/results_screen.dart';

class CupSizeScreen extends StatefulWidget {
  CoffeeConverter cc;

  CupSizeScreen(this.cc);

  @override
  _CupSizeScreenState createState() => _CupSizeScreenState();
}

class _CupSizeScreenState extends State<CupSizeScreen> {
  TextEditingController tc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(""), backgroundColor: Colors.transparent, elevation: 0,
              leading: BackButton(
     color: Color.fromRGBO(76, 116, 139, 1)
   ),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How many cups would you like?",
                key: Key("cups-question"),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: TextField(
                    controller: tc,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    key: Key("cups-text-field"),
                  )),
              RaisedButton(
                key: Key("continue-button-2"),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Color.fromRGBO(76, 116, 139, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                onPressed: () {
                  widget.cc.cups = int.tryParse(tc.text);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Results(widget.cc)));
                },
              )
            ],
          ),
        ));
  }
}
