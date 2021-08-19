
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/screens/comment/components/body.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22343c),
      body: Body(),
    );
  }
}