import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_application/boshqa/skipPage.dart';
import 'package:team_application/loginPages/siginUpPage.dart';
import 'package:team_application/models/homePage.dart';

class FaceId extends StatefulWidget {
  const FaceId({Key? key}) : super(key: key);

  @override
  _FaceIdState createState() => _FaceIdState();
}

class _FaceIdState extends State<FaceId> {
  var _formKey = GlobalKey<FormState>();
  String? phone;
  String? name;
  String? password;
  bool _obscureText = true;

  String? parolUshla;

  var key1;
  var send = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF203139),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.10,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.tealAccent,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  child: Text(
                    "Face ID",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    "Enable it?",
                    style: TextStyle(color: Colors.white38, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.face_outlined,
                    color: Colors.white54,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              top: size.height * 0.04, right: 12),
                          width: size.width * 0.2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.tealAccent.withOpacity(0.1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 20, bottom: 20),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.teal,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomSheetExample(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.04),
                          width: size.width * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 20.0),
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return PageSelectorExample();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return PageSelectorExample();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Skip Face ID",
                          style: TextStyle(color: Colors.white38, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
