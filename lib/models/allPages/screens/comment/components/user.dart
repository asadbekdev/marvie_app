
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/components/avatar.dart';
import 'package:team_application/models/allPages/screens/chat/chat.dart';
import 'package:team_application/models/allPages/screens/profile/profile.dart';

// ignore: must_be_immutable
class UserItem extends StatelessWidget {
  UserItem({
    Key? key,
    required this.size,
    required this.userColor,
    required this.mCounter,
    required this.userPic,
  }) : super(
          key: key,
        );

  final Size size;
  var userColor, mCounter, userPic;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarItem(
                size: size,
                userColor: userColor,
                userPic: userPic,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(
                        userColor: userColor,
                        userPic: userPic,
                      ),
                    ),
                  );
                },
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(
                          mCounter: 0.0,
                          userColor: userColor,
                          userPic: userPic,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                            SizedBox(height: 5.0),
                            Text(
                              "Great. I will have a look",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "4:20 PM",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            mCounter != null && mCounter != 0
                                ? Container(
                                    padding: EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF40dc9d),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "${mCounter.toString()}",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : SizedBox(height: 24),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width * 0.76,
            child: Divider(
              color: Color(0xFF35464d),
            ),
          ),
        ],
      ),
    );
  }
}
