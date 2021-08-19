
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/screens/comment/components/user.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1a2930),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 25.0, right: 5.0),
                          child: Image.asset("assets/images/google.png"),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Color(0xFF95a7af),
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xFF40dc9d),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF40dc9d),
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                      )
                    ],
                  ),
                  child: IconButton(
                    icon: Image.asset("assets/images/filter.png"),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    splashRadius: 3,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                UserItem(
                  size: size,
                  userColor: Color(0xFFffc442),
                  mCounter: 3,
                  userPic: "assets/images/user1.png",
                ),
                UserItem(
                  size: size,
                  userColor: Color(0xFF40dc9d),
                  mCounter: 0,
                  userPic: "assets/images/user2.png",
                ),
                UserItem(
                  size: size,
                  userColor: Color(0xFFfd565d),
                  mCounter: 0,
                  userPic: "assets/images/user3.png",
                ),
                UserItem(
                  size: size,
                  userColor: Color(0xFFffc442),
                  mCounter: 0,
                  userPic: "assets/images/user1.png",
                ),
                UserItem(
                  size: size,
                  userColor: Color(0xFFffc442),
                  mCounter: 3,
                  userPic: "assets/images/user2.png",
                ),
                UserItem(
                  size: size,
                  userColor: Color(0xFF40dc9d),
                  mCounter: 0,
                  userPic: "assets/images/user3.png",
                ),
                UserItem(
                  size: size,
                  userColor: Color(0xFFfd565d),
                  mCounter: 0,
                  userPic: "assets/images/user1.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
