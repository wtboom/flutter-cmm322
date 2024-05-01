import 'dart:async';

import 'package:binny_application/pages/comment.dart';
import 'package:binny_application/pages/donationpage.dart';
import 'package:binny_application/pages/howto.dart';
import 'package:binny_application/pages/manual.dart';
import 'package:binny_application/pages/myGarden.dart';
import 'package:binny_application/pages/pointpage.dart';
import 'package:binny_application/pages/profile.dart';
import 'package:binny_application/pages/raklok.dart';
import 'package:binny_application/pages/scanpage.dart';
import 'package:binny_application/pages/sell.dart';
import 'package:binny_application/widgets/appbar.dart';
import 'package:binny_application/widgets/bottomnavbar.dart';
import 'package:binny_application/widgets/listbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      appBar: MyAppBar(
        currentPageIndex: _currentIndex,
        pageController: _pageController,
      ),
      body: Stack(children: [
        PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            homePage(),
            ScanPage(),
            PointPage(),
            profilePage(),
          ],
        ),
        Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: myBottomNavbar(
              selectedIndex: _currentIndex,
              onIndexChanged: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ))
      ]),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          child: Image.asset(
            'assets/homepage/bg.png', // Replace 'your_image.png' with your image path
          ),
        ),
      ),
      Positioned(child: HomePagecontent()),
    ]);
  }
}

class HomePagecontent extends StatelessWidget {
  const HomePagecontent({super.key});

  Widget myIcon(String img, bool big, BuildContext context, String topic) {
    final String imgPath = 'assets/homepage/$img';
    return GestureDetector(
        onTap: () {
          if (topic == 'donation') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => donationPage(),
              ),
            );
          } else if (topic == 'katoo') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => katooPage(),
              ),
            );
          } else if (topic == 'sell') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SellPage(),
              ),
            );
          } else if (topic == 'manual') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ManualPage(),
              ),
            );
          }
        },
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
          width: big ? 85 : 90,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 172 - AppBar().preferredSize.height,
          ), // Spacer to account for app bar height
          Container(
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 0.0, bottom: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 15.0,
                      bottom: 0.0), // Adjust the horizontal padding as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myIcon('201.png', false, context, 'sell'),
                      myIcon('202.png', true, context, 'katoo'),
                      myIcon('203.png', false, context, 'manual'),
                      myIcon('204.png', true, context, 'donation'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ), // Add some spacing between the Row and the next Container

                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      qrCodeContainer(context),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          interact_content('303.png', 'Raklok', context),
                          SizedBox(width: 12),
                          interact_content('304.png', 'myGarden', context)
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ])),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HowtoPage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/homepage/401.png',
                          height: 185,
                          width: 360,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 190, // Specify a height here
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      squareBox(
                          boxTitle: 'boxTitle',
                          comment: 'comment',
                          username: 'username',
                          formattedDate: 'formattedDate')
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 230, // Specify a height here
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      carpet(
                          picture: 'demoTrash.png',
                          carpetTitle: 'carpetTitle',
                          description: 'description',
                          hashtag: 'hashtag')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget qrCodeContainer(BuildContext context) {
    return GestureDetector(
        onTap: () async => await QrPopup(context),
        child: Container(
            padding: EdgeInsets.all(16.0),
            height: 177,
            width: 335,
            decoration: BoxDecoration(
              color: Color(0xFF262525),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/homepage/301.png',
                      width: 71,
                      height: 22,
                    ),
                    Text(
                      "ปริมาณขยะที่ฉันช่วยไว้",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16, // Adjust the font size here
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 1,
                ), // Add some spacing between the texts
                Row(
                  children: [
                    Text(
                      "#0023412000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10, // Adjust the font size here
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "10.25",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42, // Adjust the font size here
                      ),
                    ),
                    Text(
                      " kg",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16, // Adjust the font size here
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: const Color.fromARGB(255, 180, 180, 180),
                  thickness: 0.5,
                ), // Add a horizontal line
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/homepage/302.png',
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "สแกนกับร้านรับซื้อขยะที่เข้าร่วม",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11, // Adjust the font size here
                      ),
                    ),
                  ],
                )
              ],
            )));
  }

  Future<void> QrPopup(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Image.asset(
            'assets/homepage/Group_111.png',
            width: 500,
            height: 260,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget interact_content(String img, String topic, BuildContext context) {
    final imgPath = 'assets/homepage/$img';
    return GestureDetector(
      onTap: () {
        if (topic == 'myGarden') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyGarden(),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RaklokPage(),
            ),
          );
        }
      },
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
        height: 154,
      ),
    );
  }
}
