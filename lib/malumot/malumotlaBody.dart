import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_application/loginPages/siginInPage.dart';
import 'package:team_application/malumot/malumotlarBacgraund.dart';


class BodyMalumot extends StatelessWidget {
  const BodyMalumot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.12,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/jojacha.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 12,bottom: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Shelly",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              malumot(Icons.shopping_bag, "  Shop"),
              malumot(CupertinoIcons.creditcard_fill, "  Payment"),
              malumot(CupertinoIcons.chat_bubble_2_fill, "  Chat"),
              malumot(Icons.notifications, "  Notifications"),
              malumot(Icons.settings, "  Settings"),
              malumot(CupertinoIcons.star_fill,"  Rate Us"),
      
              SizedBox(
                height: size.height * 0.10,
              ),
              Container(
                margin: EdgeInsets.all(8),
                height: 50,
                width: 150,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(15),
                //   color: Colors.teal,
                // ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return SiginIn();
                        },
                      ),
                    );
                  },
                  child: Text("Next",style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  malumot(icon,title){
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white54,
            size: 26,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white38, fontSize: 16),
          )
        ],
      ),
    );
  }
}
