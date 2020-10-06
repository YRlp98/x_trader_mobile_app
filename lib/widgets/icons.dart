import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_trader/theme/colors.dart';

class AppbarIcon extends StatelessWidget {
  final String icon;

  const AppbarIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
      onTapCancel: () {
        print('ICON');
      },
    );
  }
}
