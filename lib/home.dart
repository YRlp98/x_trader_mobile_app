import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import 'pages/dashboard_page.dart';
import 'theme/colors.dart';
import 'theme/icons.dart';
import 'theme/text_styles.dart';

class Home extends StatefulWidget {
  final titles = [
    'Dashboard',
    'Treades',
    'Chat',
    'Notifications',
    'Settings',
  ];

  final icons = [
    homeIcon,
    tradesIcon,
    chatIcon,
    notificationsIcon,
    settingsIcon,
  ];

  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  MenuPositionController _menuPositionController;
  bool userPageDragging = false;

  @override
  void initState() {
    _menuPositionController = MenuPositionController(initPosition: 0);

    _pageController = PageController(
      initialPage: 0,
      keepPage: false,
      viewportFraction: 1.0,
    );
    _pageController.addListener(handlePageChange);

    super.initState();
  }

  void handlePageChange() {
    _menuPositionController.absolutePosition = _pageController.page;
  }

  void checkUserDragging(ScrollNotification scrollNotification) {
    if (scrollNotification is UserScrollNotification &&
        scrollNotification.direction != ScrollDirection.idle) {
      userPageDragging = true;
    } else if (scrollNotification is ScrollEndNotification) {
      userPageDragging = false;
    }
    if (userPageDragging) {
      _menuPositionController.findNearestTarget(_pageController.page);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          checkUserDragging(scrollNotification);
        },
        child: PageView(
          controller: _pageController,
          children: [
            DashboardPage(),
            Container(color: Colors.green),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.amber),
          ],
          onPageChanged: (page) {},
        ),
      ),
      bottomNavigationBar: BubbledNavigationBar(
        controller: _menuPositionController,
        initialIndex: 0,
        itemMargin: EdgeInsets.symmetric(horizontal: 8),
        backgroundColor: darkGreyColor,
        defaultBubbleColor: Colors.transparent,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutQuad,
          );
        },
        items: widget.titles.map((title) {
          var index = widget.titles.indexOf(title);
          return BubbledNavigationBarItem(
            icon: getIcon(index, lightGrayColor),
            activeIcon: getIcon(index, whiteColor),
            bubbleColor: Colors.transparent,
            title: Text(
              title,
              style: bottomNavigationbarText,
            ),
          );
        }).toList(),
      ),
    );
  }

  Padding getIcon(int index, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: SvgPicture.asset(
        widget.icons[index],
        color: color,
      ),
    );
  }
}
