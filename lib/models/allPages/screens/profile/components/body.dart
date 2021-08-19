
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/components/avatar.dart';
import 'package:team_application/models/allPages/screens/profile/components/settings_item.dart';

// ignore: must_be_immutable
class Body extends StatefulWidget {
  Body({Key? key, this.userColor, this.userName, this.userPic})
      : super(key: key);
  var userColor, userPic, userName;
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var starSwitch = true, commentSwitch = true, notifySwitch = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color: Color(0xFF35464d),
                  ),
                  bottom: BorderSide(
                    width: 2,
                    color: Color(0xFF35464d),
                  ),
                ),
                color: Color(0xFF30444d),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
              child: Row(
                children: [
                  AvatarItem(
                    size: size,
                    userColor: widget.userColor,
                    userPic: widget.userPic,
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alice Smith",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          "+191 23 456 7890",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          "randommail@mail.mail",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  SettingsItem(
                    title: "Option one",
                    icon: CupertinoIcons.heart_fill,
                    iconBgc: Color(0xFFfd575f),
                    actions: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFa0acaa),
                        size: 15.0,
                      ),
                    ],
                  ),
                  SettingsItem(
                    title: "Option two",
                    icon: CupertinoIcons.bookmark_fill,
                    iconBgc: Color(0xFFfec442),
                    actions: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFa0acaa),
                        size: 15.0,
                      ),
                    ],
                  ),
                  SettingsItem(
                    title: "Option three",
                    icon: CupertinoIcons.home,
                    iconBgc: Color(0xFF3fd598),
                    actions: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFa0acaa),
                        size: 15.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  SettingsItem(
                    title: "Option one",
                    icon: CupertinoIcons.star_fill,
                    iconBgc: Color(0xFFfec442),
                    actions: [
                      CupertinoSwitch(
                        value: starSwitch,
                        onChanged: (value) {
                          setState(() {
                            starSwitch = value;
                          });
                        },
                      )
                    ],
                  ),
                  SettingsItem(
                    title: "Option two",
                    icon: CupertinoIcons.chat_bubble,
                    iconBgc: Color(0xFFfd575f),
                    actions: [
                      CupertinoSwitch(
                        value: commentSwitch,
                        onChanged: (value) {
                          setState(() {
                            commentSwitch = value;
                          });
                        },
                      )
                    ],
                  ),
                  SettingsItem(
                    title: "Option three",
                    icon: Icons.notifications,
                    iconBgc: Color(0xFF3fd598),
                    actions: [
                      CupertinoSwitch(
                        value: notifySwitch,
                        onChanged: (value) {
                          setState(() {
                            notifySwitch = value;
                          });
                        },
                      )
                    ],
                  ),
                  SettingsItem(
                    title: "Option one",
                    icon: CupertinoIcons.heart_fill,
                    iconBgc: Color(0xFFfd575f),
                    actions: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF40dc9d),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFa0acaa),
                        size: 15.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
