import 'package:flutter/cupertino.dart';

//! Small Avatar
class AvatarSmallWidget extends StatelessWidget {
  final String avatarPicture;

  const AvatarSmallWidget({
    Key key,
    @required this.avatarPicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Image.asset(
        avatarPicture,
      ),
    );
  }
}
