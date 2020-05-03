import 'package:flutter/material.dart';
import 'package:homebrew/models/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(76, 116, 139, 1),
        accentColor: Color.fromRGBO(76, 116, 139, 1),
        unselectedWidgetColor: Colors.transparent,
        textTheme: TextTheme(
            bodyText2: TextStyle(
                color: Color.fromRGBO(76, 116, 139, 1), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Color.fromRGBO(76, 116, 139, 1))
      ),
      home: SplashScreen(),
    );
  }
}
