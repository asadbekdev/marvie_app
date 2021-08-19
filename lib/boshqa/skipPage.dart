import 'package:flutter/material.dart';
import 'package:team_application/loginPages/siginInPage.dart';
import 'package:team_application/models/homePage.dart';

class PageSelectorExample extends StatelessWidget {
  PageSelectorExample({Key? key}) : super(key: key);

  List<Container> kIcons = [
    Container(
      margin: EdgeInsets.all(12),
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage("assets/images/tabibi.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(12),
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage("assets/images/tabib.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(12),
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage("assets/images/tabi.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF203139),
      body: DefaultTabController(
        length: kIcons.length,
        child: Builder(
          builder: (BuildContext context) => Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.04,
              ),
              Expanded(
                child: IconTheme(
                  data: IconThemeData(
                    size: 90.0,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Container(
                    child: TabBarView(children: kIcons),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Join our awesome community",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: size.height * 0.01),
                child: Text(
                  "It looks like you are on track. Please",
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: size.height * 0.02),
                child: Text(
                  "continue to follow your daily plan",
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ),
              const TabPageSelector(),
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SiginIn(),
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
                                return HomePage();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03)
            ],
          ),
        ),
      ),
    );
  }
}
