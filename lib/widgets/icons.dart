import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';

//* Appbar Icon
class AppbarIcon extends StatelessWidget {
  final String icon;

  const AppbarIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 33,
        height: 33,
        decoration: BoxDecoration(
          color: navyBlueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(7),
          child: SvgPicture.asset(
            icon,
            color: whiteColor,
          ),
        ),
      ),
      onTap: () {
        print('Appbar Icon');
      },
    );
  }
}

//* Games Icon
class GamesIcon extends StatelessWidget {
  final String gameIcon;

  const GamesIcon({
    Key key,
    @required this.gameIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        width: 55,
        height: 55,
        child: Image.asset(
          gameIcon,
        ),
      ),
      onTap: () {
        print('Games Icon');
      },
    );
  }
}
