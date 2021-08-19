
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/screens/chat/components/body.dart';

// ignore: must_be_immutable
class ChatPage extends StatelessWidget {
  ChatPage({
    Key? key,
    required this.userColor,
    required this.mCounter,
    required this.userPic,
  }) : super(key: key);
  var userColor, mCounter, userPic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22343c),
      body: Body(
        userColor: userColor,
        userPic: userPic,
      ),
    );
  }
}
