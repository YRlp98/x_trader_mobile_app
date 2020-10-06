import 'package:flutter/material.dart';
import 'package:x_trader/theme/icons.dart';
import 'package:x_trader/widgets/avatars.dart';
import 'package:x_trader/widgets/icons.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: AvatarSmallWidget(
          avatarPicture: 'assets/images/avatar_1.png',
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppbarIcon(icon: typeIcon),
              AppbarIcon(icon: sortIcon),
              AppbarIcon(icon: searchIcon),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
      //! Body
      body: Center(
        child: Image.asset(
          'assets/images/avatar_1.png',
        ),
      ),
    );
  }
}
