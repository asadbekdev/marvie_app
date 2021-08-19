import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AvatarItem extends StatelessWidget {
  AvatarItem({
    Key? key,
    required this.size,
    required this.userColor,
    required this.userPic,
    this.onPressed,
  }) : super(key: key);

  var userColor, userPic, onPressed;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: userColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Image.asset(userPic.toString()),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
