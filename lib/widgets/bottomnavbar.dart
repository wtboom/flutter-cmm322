import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';

var myIcon = [
  {
    'title': 'หน้าแรก',
    'icon': FontAwesomeIcons.house,
  },
  {
    'title': 'สแกนขยะ',
    'icon': FontAwesomeIcons.barcode,
  },
  {
    'title': 'แต้มสะสม',
    'icon': FontAwesomeIcons.gift,
  },
  {
    'title': 'โปรไฟล์',
    'icon': FontAwesomeIcons.user,
  },
];

class myBottomNavbar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  const myBottomNavbar({
    Key? key,
    required this.selectedIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  State<myBottomNavbar> createState() => _myBottomNavbarState();
}

class _myBottomNavbarState extends State<myBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 43, vertical: 4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 8.50,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: myIcon.map((item) {
          var title = item['title'].toString();
          var icon = item['icon'] as IconData;
          var index = myIcon.indexOf(item);
          return GestureDetector(
            onTap: () {
              widget.onIndexChanged(index);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  icon,
                  color: widget.selectedIndex == index
                      ? Color(0xFF29D062)
                      : Colors.grey, // Change icon color based on selection
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: widget.selectedIndex == index
                        ? Color(0xFF29D062)
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
