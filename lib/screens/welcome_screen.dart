import 'package:back_to_monke/screens/documentation_screen.dart';
import 'package:flutter/material.dart';
import 'package:back_to_monke/constants.dart';
import 'package:flutter/cupertino.dart';
import 'home_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              Container(
                child: Image.asset('assets/images/bottom.png'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 65.0),
              Container(
                child: Image.asset('assets/images/center.png'),
              ),
              // SizedBox(height: 30.0),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: kTextStyle_W900_S40,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Powerful for organizations. Accessible to everyone'),
                        // TypewriterAnimatedText('developers.'),
                        // TypewriterAnimatedText('Fast for'),
                        // TypewriterAnimatedText('Everyone.'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton.extended(
                      onPressed: () =>
                          Navigator.pushNamed(context, HomeScreen.id),
                      label: Text('START BUILDING'),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    // const SizedBox(width: 15.0),
                    FloatingActionButton.extended(
                      onPressed: () =>
                          Navigator.pushNamed(context, DocumentationPage.id),
                      label: const Text(
                        'DOCUMENTATION',
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      ),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        side: BorderSide(
                            color: Colors.deepOrangeAccent, width: 1.0),
                      ),
                      backgroundColor: Colors.white.withOpacity(0.0),
                      foregroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ],
      ),
    );
  }
}
