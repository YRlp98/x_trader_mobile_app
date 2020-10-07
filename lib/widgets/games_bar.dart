import 'package:flutter/material.dart';
import 'package:x_trader/theme/colors.dart';

import 'icons.dart';

class GamesBar extends StatefulWidget {
  const GamesBar({
    Key key,
  }) : super(key: key);

  @override
  _GamesBarState createState() => _GamesBarState();
}

class _GamesBarState extends State<GamesBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, right: 15, left: 15),
        height: 70,
        decoration: BoxDecoration(
          color: navyBlueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return GamesIcon(gameIcon: 'assets/images/dota2.png');
            }));
  }
}
