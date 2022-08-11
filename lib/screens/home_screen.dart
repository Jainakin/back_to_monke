import 'package:flutter/material.dart';
import 'package:back_to_monke/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_ipfs/flutter_ipfs.dart';
import 'package:back_to_monke/components/mint.dart';
import 'package:animations/animations.dart';
import 'package:back_to_monke/components/execute.dart';
import 'package:back_to_monke/components/test_picker.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();

  String uniName = '';
  String classOf = '';
  String course = '';
  String specialization = '';
  String studentName = '';
  String enrollmentNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset('assets/images/bottom_white.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 100.0),
                  Container(
                    child: Image.asset('assets/images/center_cube.png'),
                  ),
                  // SizedBox(height: 30.0),
                  Spacer(),
                  SizedBox(
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: kTextStyle_W900_S40,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Minting....'),
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
                  const SizedBox(height: 10.0),
                  FloatingActionButton.extended(
                    onPressed: () => ImagePickerService.pickImage(context),
                    label: Text('Pick Image'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(height: 10.0),
                  FloatingActionButton.extended(
                    onPressed: () => UploadMeta().mintuploadMetaDataToIPFS(),
                    label: Text('Upload Metadata'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  SizedBox(height: 10.0),
                  FloatingActionButton.extended(
                    onPressed: () => Exe().main(),
                    label: Text('Mint Certificate'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10.0),
                  SizedBox(height: 50.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
