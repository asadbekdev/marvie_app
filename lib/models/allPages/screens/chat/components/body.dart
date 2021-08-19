
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/components/avatar.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  Body({
    Key? key,
    required this.userColor,
    this.mCounter,
    required this.userPic,
  }) : super(key: key);
  var userColor, mCounter, userPic;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Color(0xFF30444d),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: AvatarItem(
                            size: size,
                            userColor: userColor,
                            userPic: userPic,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Alice Smith",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "4:20 PM",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xFF889ca5)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: [
                                  Text(
                                    "Great. I will have a look",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF889ca5)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "We're interestedd in your ideas and would be glad to build something bigger out of it. Share your ideas about features/design and well bring them on to our full case of this product this design.",
                    style: TextStyle(color: Color(0xFFDBDEDF), height: 1.6),
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                  color: Color(0xFF30444d),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF30444d),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AvatarItem(
                              size: size,
                              userColor: userColor,
                              userPic: userPic,
                              onPressed: () {},
                            ),
                            SizedBox(width: 15.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Alice Smith",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "20 April at 4:20 PM",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF889ca5),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          "We're interestedd in your ideas and would be glad to build something bigger out of it Share your ideas about features/design and well bring them on to our full case of this product this design.",
                          style:
                              TextStyle(color: Color(0xFFDBDEDF), height: 1.6),
                        ),
                        SizedBox(height: 10.0),
                        Divider(
                          color: Colors.white,
                          thickness: 0.2,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.ellipses_bubble_fill,
                                    color: Color(0xFF889ca5), size: 20.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "7 Comments",
                                  style: TextStyle(color: Color(0xFF889ca5)),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.heart_fill,
                                    color: Color(0xFF889ca5), size: 20.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "49 Likes",
                                  style: TextStyle(color: Color(0xFF889ca5)),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.share,
                                    color: Color(0xFF889ca5), size: 20.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "Share",
                                  style: TextStyle(color: Color(0xFF889ca5)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.2,
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: userColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Image.asset(userPic.toString()),
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF1a2930),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                suffixIcon: Icon(CupertinoIcons.cloud_upload,
                                    color: Colors.white, size: 20.0),
                                hintText: "Write comment...",
                                hintStyle: TextStyle(
                                  color: Color(0xFF95a7af),
                                  fontSize: 12.0,
                                ),
                                contentPadding: EdgeInsets.only(left: 15.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                  color: Color(0xFF30444d),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF30444d),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AvatarItem(
                              size: size,
                              userColor: userColor,
                              userPic: userPic,
                              onPressed: () {},
                            ),
                            SizedBox(width: 15.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Alice Smith",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "20 April at 4:20 PM",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF889ca5),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          "We're interestedd in your ideas and would be glad to build something bigger out of it.",
                          style:
                              TextStyle(color: Color(0xFFDBDEDF), height: 1.6),
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Image.asset("assets/images/post1.png"),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/images/post2.png"),
                                  SizedBox(height: 10.0),
                                  Image.asset("assets/images/post3.png"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Divider(
                          color: Colors.white,
                          thickness: 0.2,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.ellipses_bubble_fill,
                                    color: Color(0xFF889ca5), size: 20.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "7 Comments",
                                  style: TextStyle(color: Color(0xFF889ca5)),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.heart_fill,
                                    color: Color(0xFF889ca5), size: 20.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "49 Likes",
                                  style: TextStyle(color: Color(0xFF889ca5)),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.share,
                                    color: Color(0xFF889ca5), size: 20.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "Share",
                                  style: TextStyle(color: Color(0xFF889ca5)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.2,
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: userColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Image.asset(userPic.toString()),
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF1a2930),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                suffixIcon: Icon(CupertinoIcons.cloud_upload,
                                    color: Colors.white, size: 20.0),
                                hintText: "Write comment...",
                                hintStyle: TextStyle(
                                  color: Color(0xFF95a7af),
                                  fontSize: 12.0,
                                ),
                                contentPadding: EdgeInsets.only(left: 15.0)),
                          ),
                        ),
                      ],
                    ),
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
