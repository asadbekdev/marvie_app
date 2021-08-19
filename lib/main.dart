import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_application/loginPages/kirishPage.dart';
import 'package:team_application/models/homePage.dart';
/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Team',
      theme: ThemeData(
        accentColor: Color(0xff13d38e),
        textTheme: GoogleFonts.comfortaaTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
*/

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'team application',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Color(0xff13d38e),
        textTheme: GoogleFonts.comfortaaTextTheme(),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<FirebaseApp> _init = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _init,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text("ERROR"),
            ),
          );
        }
        if(snapshot.connectionState == ConnectionState.done){
          return KirishPage();
        }
        return Scaffold(
          appBar: AppBar(title: Text("LOADING..."),),
        );
      },
    );
  }
}
