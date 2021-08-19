
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/screens/profile/components/body.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  Profile({
    Key? key,
    required this.userColor,
    required this.userPic,
  }) : super(key: key);
  var userColor, userPic, userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22343c),
      body: Body(
        userColor: userColor,
        userName: userName,
        userPic: userPic,
      ),
    );
  }
}
