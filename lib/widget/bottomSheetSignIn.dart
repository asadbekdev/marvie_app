import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:team_application/boshqa/faceId.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class BottomSheetPageSignIn extends StatefulWidget {
  var ctx;
  String? phone;
  BottomSheetPageSignIn(this.ctx,this.phone,{Key? key}) : super(key: key);

  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetPageSignIn> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();
  final FocusNode _pinPutFocusNode = FocusNode();

  TextEditingController smsCode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _authUser.verifyPhoneNumber(
        phoneNumber: widget.phone!,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException credential) {},
        codeSent: (String verificationId, int? resendToken) async {},
        codeAutoRetrievalTimeout: (String text) {});
  }


  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(32, 73, 83, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Builder(
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Center(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      child: PinPut(
                        controller: smsCode,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Bo'sh Bolmasligi Kerak !";
                          }
                        },
                        // onSaved: ,
                        fieldsCount: 6,
                        onSubmit: (String pin) => _showSnackBar(pin, context),
                        focusNode: _pinPutFocusNode,
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => _pinPutFocusNode.requestFocus(),
                          child: const Text(
                            'Focus',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FlatButton(
                          onPressed: () => _pinPutFocusNode.unfocus(),
                          child: const Text(
                            'Unfocus',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FlatButton(
                          onPressed: () => smsCode.text = '',
                          child: const Text(
                            'Clear All',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.04),
                      width: size.width * 0.8,
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
                          onPressed: _phoneVerify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
  _phoneVerify() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await _authUser.verifyPhoneNumber(
          phoneNumber: widget.phone!,
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseAuthException credential) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(seconds: 3),
                content: Text("Smsni Tekshirib Qaytadan Urinib Ko'ring !"),
              ),
            );
          },
          codeSent: (String verificationId, int? resendToken) async {
            print("Sms Jonatildi !");
            PhoneAuthCredential phoneAuthCredential =
            PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: smsCode.text);
            await _authUser.signInWithCredential(phoneAuthCredential);
            await Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => FaceId()));
          },
          codeAutoRetrievalTimeout: (String text) {
            print("TEXT: $text");
          });
    }
  }

  phoneverification() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }
}
