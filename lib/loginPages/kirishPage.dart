import 'package:flutter/material.dart';
import 'package:team_application/malumot/malumotPage.dart';

class KirishPage extends StatelessWidget {
  const KirishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return MalumotPage();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.10,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Marvie",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "IOS UI Kit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 12, left: 4, right: 4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Now it's dark 🌚",
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Marvie is your top notch multipurpose",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "UI kit with bright and friendly colors.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Full-featured and handy. Trendy and",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "eye-catching. Created with care of",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "designers and users.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.30,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ayiq.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
