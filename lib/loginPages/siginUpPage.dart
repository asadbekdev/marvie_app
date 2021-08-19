import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:team_application/loginPages/siginInPage.dart';
import 'package:team_application/widget/bottomSheet.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  // GlobalKey is needed to show bottom sheet.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();
  String? phone;
  String? name;
  String? password;
  bool _obscureText = true;

  String? parolUshla;

  var key1;
  var send = Firebase.initializeApp();

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
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
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    "to start working",
                    style: TextStyle(color: Colors.white38, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 16),
                  child: TextFormField(
                    onSaved: (e) {
                      print("Telefon Uzunligi: ${e!.length}");
                      phone = e;
                    },
                    cursorColor: Colors.teal,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      icon: Container(
                        height: 45,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.yellow.withOpacity(0.1),
                        ),
                        child: Icon(
                          Icons.smartphone_outlined,
                          color: Colors.orange,
                        ),
                      ),
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(color: Colors.white54),
                    ),
                    validator: (text) {
                      if (text!.length != 13) {
                        return "Raqamni +998907374483 tartibda kiriting";
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
                          onPressed: () async{
                            if (_formKey.currentState!.validate()){
                              _formKey.currentState!.save();
                              await showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                barrierColor: Colors.transparent,
                                elevation: 0,
                                context: context,
                                builder: (ctx) => BottomSheetPage(ctx,phone),
                              );
                            }
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
