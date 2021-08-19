import 'package:flutter/material.dart';
import 'package:team_application/malumot/malumotlaBody.dart';

class MalumotPage extends StatelessWidget {
  const MalumotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF203139),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), 
          child: BodyMalumot(),
      ),
    );
  }
}
