import 'package:binny_application/widgets/listbox.dart';
import 'package:flutter/material.dart';

class donationPage extends StatelessWidget {
  const donationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Color(0xFF242424),
                                size: 28,
                              )),
                        ),
                        Image.asset(
                          "assets/donationpage/Binny.png",
                          fit: BoxFit.cover,
                          width: 75,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Icon(
                            Icons.favorite_border_rounded,
                            color: Color(0xFF242424),
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 230, // Specify a height here
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    squareBox(
                        boxTitle: 'boxTitle',
                        comment: 'comment',
                        username: 'username',
                        formattedDate: 'formattedDate'),
                    squareBox(
                        boxTitle: 'boxTitle',
                        comment: 'comment',
                        username: 'username',
                        formattedDate: 'formattedDate'),
                    squareBox(
                        boxTitle: 'boxTitle',
                        comment: 'comment',
                        username: 'username',
                        formattedDate: 'formattedDate'),
                    squareBox(
                        boxTitle: 'boxTitle',
                        comment: 'comment',
                        username: 'username',
                        formattedDate: 'formattedDate'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'องค์กรรับบริจาค',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/donationpage/Frame ${index + 1}.png'),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: MediaQuery.of(context).size.width / 4,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'โครงการน่าสนใจ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/donationpage/Frame ${index + 8}.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: MediaQuery.of(context).size.width / 2.5,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
