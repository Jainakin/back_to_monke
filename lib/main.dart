// @dart=2.9
import 'package:flutter/material.dart';
import 'package:back_to_monke/screens/home_screen.dart';
import 'package:back_to_monke/screens/welcome_screen.dart';
import 'package:back_to_monke/screens/documentation_screen.dart';

void main() => runApp(Hackaccino());


class Hackaccino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        DocumentationPage.id : (context) => DocumentationPage(),
      },

      home: HomeScreen(),
    );
  }
}
