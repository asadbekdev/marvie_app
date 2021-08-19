
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_application/models/allPages/card.dart';
import 'package:team_application/models/homePage.dart';

import 'feed.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF203139),
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                // Tepadagi Text Qismi
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                child: Text(
                  "Home Page",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF3DD598),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        width: 176.0,
                        height: 250.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  top: 20.0,
                                  bottom: 30.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.card_travel_sharp,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    "Introduce",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 16.0, bottom: 20.0),
                              child: Text(
                                "What is it?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 16.0, bottom: 20.0),
                              child: Text(
                                "20 min",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.0,
                                right: 16.0,
                                left: 16.0,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    "Start",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        width: 176.0,
                        height: 250.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  top: 20.0,
                                  bottom: 30.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    "Introduce",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 16.0, bottom: 20.0),
                              child: Text(
                                "What is it?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 16.0, bottom: 20.0),
                              child: Text(
                                "20 min",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.0,
                                right: 16.0,
                                left: 16.0,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    "Start",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                // !!! Yashil Row !!!
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeUI(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent.shade200.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  height: 110.0,
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/92a3/0d09/72ed063c296c33cd91b4c3569df9f6b5?Expires=1630281600&Signature=R4kuv6Zy8xSmWlLDW3hJ0gMiYZNkhbFU3NMUTJGc7IbAaFzc4aR31gIn3Jm2mQ4F8kibUvR~8UDvWsX2yuYmWhfQGN1VYYlSc9b40aQ1eVbG7IoB~qMqzRZ8PmxvhbM8s3mYeOC8e2scXlGPp4trB5RIWtUEjUL-0a0yrpIkwFD8C3MBgFqPuh~S1QaKJ4WRDEPRaD1KVnQ4Q-MFwU4RZNQKgK4SDtF81pFFfPiyU0xaSre1fJO5~4bx6dBqsKBdUq6a7Ztlodsmr5qzzoNaa4GPwxc0hWnJ0RT57-~vNsA1GzrA0H-gm6xLniQVWq9RKaThwwCTYN4brZRZF0vx-Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Color(0xFF3DD598),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: 55.0,
                        height: 60.0,
                      ),
                      title: Text(
                        "Statistics",
                        style: TextStyle(
                          color: Color(0xFF3DD598),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Statistics for 8 PM",
                        style: TextStyle(
                          color: Color(0xFF3DD598).withOpacity(0.6),
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.forward,
                        size: 50,
                        color: Color(0xFF3DD598),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                // !!! Sariq Row !!!
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Feed(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  height: 110.0,
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/a1ff/1076/eba593deee0095f6379f38aae47a22ac?Expires=1630281600&Signature=D~FdWV0UKZl2bDZv9xQwcyGJMA7uQFlpB6vgWVzKjsiZ1Isz20KM2tYwsEbklEX7UkFGq00UNkEAJPjtf~EF7l9OWTgzG95ZCYvo2o2~k3zeqwmYBD4lPEQykLec-sr-MYphLqfEuPWle2AZSUgDsdC7PX2E9julUFoAQho7Mc5CpnuIzHhZUj406BUHbLYjKo4DFXr6EzlN8WXbe7mAfwwbipa9bsInTKBLjFxRZw0ks4k2tR6BAaqKyI~3rdf9ZVBtyitE2GSNm~oLsPHvUxUJ4pQJm2H4DGr~bujTDYbksoUeawnINaL4Q8t3Qjnr5uVEUhnqrJEyTf3zA98ltQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: 55.0,
                        height: 60.0,
                      ),
                      title: Text(
                        "Feed",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Feed for 8 PM",
                        style: TextStyle(
                          color: Colors.yellow.withOpacity(0.6),
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.forward,
                        size: 50,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                // !!! Qizil Row  !!!
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  height: 110.0,
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/92a3/0d09/72ed063c296c33cd91b4c3569df9f6b5?Expires=1630281600&Signature=R4kuv6Zy8xSmWlLDW3hJ0gMiYZNkhbFU3NMUTJGc7IbAaFzc4aR31gIn3Jm2mQ4F8kibUvR~8UDvWsX2yuYmWhfQGN1VYYlSc9b40aQ1eVbG7IoB~qMqzRZ8PmxvhbM8s3mYeOC8e2scXlGPp4trB5RIWtUEjUL-0a0yrpIkwFD8C3MBgFqPuh~S1QaKJ4WRDEPRaD1KVnQ4Q-MFwU4RZNQKgK4SDtF81pFFfPiyU0xaSre1fJO5~4bx6dBqsKBdUq6a7Ztlodsmr5qzzoNaa4GPwxc0hWnJ0RT57-~vNsA1GzrA0H-gm6xLniQVWq9RKaThwwCTYN4brZRZF0vx-Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: 55.0,
                        height: 60.0,
                      ),
                      title: Text(
                        "Cart",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Cart for 8 PM",
                        style: TextStyle(
                          color: Colors.redAccent.withOpacity(0.6),
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.forward,
                        size: 50,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
