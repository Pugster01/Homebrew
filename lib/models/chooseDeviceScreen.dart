import 'package:flutter/material.dart';
import 'package:homebrew/models/coffee_converter.dart';
import 'package:homebrew/models/cupSizeScreen.dart';

class choose_device_screen extends StatefulWidget {
  @override
  _choose_device_screenState createState() => _choose_device_screenState();
}

class _choose_device_screenState extends State<choose_device_screen> {
  bool frenchPress = false;
  bool dripMachine = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "What coffee maker are you using?",
            key: Key("coffee-maker-question"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(76, 116, 139, 1), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CheckboxListTile(
                      key: Key("french-press-button"),
                      title: Text(
                        "French Press",
                        style: TextStyle(color: Color.fromRGBO(76, 116, 139, 1)),
                      ),
                      activeColor: Colors.transparent,
                      checkColor: Color.fromRGBO(76, 116, 139, 1),
                      value: frenchPress,
                      onChanged: (val) {
                        if (val) {
                          frenchPress = true;
                          dripMachine = false;
                        } else {
                          frenchPress = false;
                          dripMachine = true;
                        }

                        setState(() {});
                      },
                    ),
                  ),
                  Divider(
                    color: Color.fromRGBO(76, 116, 139, 1),
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CheckboxListTile(
                      key: Key("drip-machine-button"),
                      activeColor: Colors.transparent,
                      checkColor: Color.fromRGBO(76, 116, 139, 1),
                      title: Text(
                        "Drip Machine",
                        style: TextStyle(color: Color.fromRGBO(76, 116, 139, 1)),
                      ),
                      value: dripMachine,
                      onChanged: (val) {
                        if (val) {
                          frenchPress = false;
                          dripMachine = true;
                        } else {
                          frenchPress = true;
                          dripMachine = false;
                        }

                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          RaisedButton(
            key: Key("continue-button"),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            color: Color.fromRGBO(76, 116, 139, 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            onPressed: () {
              CoffeeConverter cc;
              if (frenchPress) {
                cc = CoffeeConverter(CoffeeMachine.dripMachine);
              } else {
                cc = CoffeeConverter(CoffeeMachine.frenchPress);
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CupSizeScreen(cc)));
            },
          )
        ],
      )),
    );
  }
}
