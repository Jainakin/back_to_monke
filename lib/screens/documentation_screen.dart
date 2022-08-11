import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:back_to_monke/constants.dart';
import 'package:animated_text/animated_text.dart';

class DocumentationPage extends StatefulWidget {
  static String id = 'documentation_screen';

  @override
  State<DocumentationPage> createState() => _DocumentationPageState();
}

class _DocumentationPageState extends State<DocumentationPage> {
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
                child: Image.asset('assets/images/dark_bottom.png'),
              ),
            ],
          ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.,
          //   children: <Widget>[
          //     SizedBox(height: 100.0,),
          //     Container(
          //       child: Text('Contract Address', style: kTextStyle_W900_S20_Black,),
          //     ),
          //   ],
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 100.0),
              Container(
                child: Image.asset('assets/images/center_square.png'),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 375.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    '\nStack:',
                    style: kTextStyle_W900_S30_Black,
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: kTextStyle_W900_S30_Black,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('Open\nZeppelin'),
                        RotateAnimatedText('Polygon'),
                        RotateAnimatedText('Solidity'),
                        RotateAnimatedText('Meta\nMask'),
                        RotateAnimatedText('IPFS'),
                        RotateAnimatedText('ERC721'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 550.0),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Image.asset('assets/images/stack_grp.png'),
                ),
              ),
              // Image.asset('assets/images/stack_grp.png'),
            ],
          )
        ],
      ),
    );
  }
}
