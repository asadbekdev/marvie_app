import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_application/boshqa/skipPage.dart';
import 'package:team_application/loginPages/siginInPage.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class Datada extends StatefulWidget {
  const Datada({Key? key}) : super(key: key);

  @override
  _SiginInState createState() => _SiginInState();
}

class _SiginInState extends State<Datada> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.tealAccent,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.tealAccent,
                      ),
                      child: TextButton(
                        child:
                            Text("Skip", style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageSelectorExample(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  child: Text(
                    "Wellcome!",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    "Sign In to continue",
                    style: TextStyle(color: Colors.white38, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: TextFormField(
                    cursorColor: Colors.teal,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      icon: Container(
                        height: 45,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.yellow.withOpacity(0.1),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.orange,
                        ),
                      ),
                      hintText: 'You name',
                      hintStyle: TextStyle(color: Colors.white54),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: TextFormField(
                    cursorColor: Colors.teal,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        icon: Container(
                          height: 45,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.lock,
                            color: Colors.red,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.teal,
                          ),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.white54)),
                    onSaved: (p) {
                      password = p;
                    },
                    validator: (text) {
                      if (text!.length < 8) {
                        return "Kamida 8 ta belgi kerak";
                      } else {
                        parolUshla = text;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.only(top: size.height * 0.04, right: 12),
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
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) {
                                  return SiginIn();
                                },
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
                          onPressed: () async {
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
