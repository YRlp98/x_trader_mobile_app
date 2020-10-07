import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/icons.dart';
import 'icons.dart';

class FAB extends StatelessWidget {
  const FAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: greenColor,
      elevation: 5.0,
      child: FABIcon(
        icon: addIcon,
      ),
      onPressed: () {
        print('FAB');
      },
    );
  }
}
