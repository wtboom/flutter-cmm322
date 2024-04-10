// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

DateTime currentDate = DateTime.now().toLocal();
String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
// Text Style here -------------------------------------------------------------------------------------------------------------
const TextStyle topCommentText = TextStyle(
  fontFamily: 'IBMPlexSansThai',
  fontWeight: FontWeight.w400,
  fontSize: 12,
  color:
      Color(0xFF9FFFA9), // Use direct color value instead of Color.fromRGBO()
  letterSpacing: -0.4,
);

const TextStyle titleText = TextStyle(
  fontSize: 20,
  fontFamily: 'IBMPlexSansThai',
  fontWeight: FontWeight.w700,
  color: Colors.white,
  letterSpacing: -0.5,
);

const TextStyle commentText = TextStyle(
  fontFamily: 'IBMPlexSansThai',
  fontWeight: FontWeight.w400,
  fontSize: 12,
  color: Colors.white, // Use direct color value instead of Color.fromRGBO()
  letterSpacing: -0.4,
);
const TextStyle locationText = TextStyle(
  fontFamily: 'IBMPlexSansThai',
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: Colors.white, // Use direct color value instead of Color.fromRGBO()
  letterSpacing: -0.4,
);
//Color style here -------------------------------------------------------------------------------------------------------------
const Color primaryColor =
    Color(0xFF02C275); // Use direct color value instead of Color.fromRGBO()
const Color cardBG =
    Color(0xFF242424); // Use direct color value instead of Color.fromRGBO()

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Side Scroll List View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 17, 0, 17),
            child: Container(
              child: Container(
                height: 216,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    squareBox('Ambatukam', 'Oh godddd you make me bursttttt',
                        'Dreamybull'),
                    squareBox('Ambatukam', 'Oh godddd you make me bursttttt',
                        'Dreamybull'),
                    squareBox('Ambatukam', 'Oh godddd you make me bursttttt',
                        'Dreamybull'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 141,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  carpet('ขยะกำพร้าไปไหนดี?', 'N15 Technology',
                      '#ประเภทขยะกำพร้า'),
                  carpet('2', '3', '4')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget squareBox(String boxTitle, comment, Username) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: InkWell(
          onTap: () {}, //Link to whatever
          child: Container(
            width: 216,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 7.0),
                    child: Text(
                      '$boxTitle asdasd',
                      style: titleText,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 7.0),
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: 'Top comment\n',
                          style: topCommentText,
                        ),
                        TextSpan(
                          text: 'อะไรก็ว่า บลา บลา บลา',
                          style: commentText,
                        ),
                      ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 7.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .end, // Align children to the start (left)
                      children: [
                        Container(
                          width: 155,
                          child: RichText(
                            textAlign: TextAlign.right,
                            text: TextSpan(
                              text: 'Username\n $formattedDate',
                              style: commentText,
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/logo1.png'),
                            fit: BoxFit.contain,
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget carpet(String carpetTitle, description, hashtag) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Container(
            width: 348,
            height: 200, // Set the height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/demoTrash.png'), // Replace 'demoTrash.png' with your image asset path
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Container(
            width: 348,
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(102, 0, 0, 0),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(17, 9, 17, 0),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '$carpetTitle \n',
                style: titleText,
              ),
              TextSpan(
                text: description,
                style: locationText,
              )
            ])),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(17, 9, 17, 9),
              child: Text.rich(TextSpan(
                  children: [TextSpan(text: hashtag, style: locationText)])),
            ))
      ],
    );
  }
}
