import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentPageIndex;
  final PageController pageController;
  const MyAppBar({
    Key? key,
    required this.currentPageIndex,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: currentPageIndex == 0 || currentPageIndex == 3
          ? Colors.transparent
          : Colors.white,
      leading: currentPageIndex == 0
          ? null
          : SizedBox(
              width: 48,
              height: 48,
              child: IconButton(
                  onPressed: () {
                    if (currentPageIndex != 0) {
                      pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    size: 48,
                  )),
            ),
      title: SizedBox(
        width: currentPageIndex == 0 ? 90 : 70,
        height: currentPageIndex == 0 ? 125 : 86,
        child: Row(
          children: [
            Flexible(
              child: Image.asset('assets/icons/BINNY.png',
                  fit: BoxFit.cover,
                  color:
                      currentPageIndex == 0 ? Colors.white : Color(0xFF242424)),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Icon(Icons.history,
              size: 32,
              color: currentPageIndex == 0 ? Colors.white : Color(0xFF242424)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Icon(CupertinoIcons.gift,
              size: 32,
              color: currentPageIndex == 0 ? Colors.white : Color(0xFF242424)),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
