import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int tanlov = 0;
int tanlov1 = 0;
int tanlov2 = 0;

class BodyFigma extends StatefulWidget {
  const BodyFigma({Key? key}) : super(key: key);

  @override
  _BodyFigmaState createState() => _BodyFigmaState();
}

List names = ["Hot", "Woman", "Man", "Child"];
List stikers = ["🔥", "👚", "👕", "🍼"];
List different = ["All", "Party", "Camping", "Attraction"];
List difStik = ["", "🎉  ", "🏕  ", "🎡  "];
List stiker = ["🍚", "🍒", "🥑", "🍑", "🍆", "🥥"];
List sportStik = ["🧘🏼‍♂️", "🏋️‍♀️", "🏊🏼‍♀️", "🚴🏻‍♂️", "🥋", "🤼‍♂️"];
List sports = ["Relax", "Gym", "Swiming", "Bike", "Taekwondo", "Wrestling"];
List money = [1200, 700, 300, 400, 800, 1500];

class _BodyFigmaState extends State<BodyFigma> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF203139),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Container(
                      height: 140,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                tanlov1 = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: tanlov1 != index
                                        ? Color(0xFF30444D)
                                        : Colors.pink),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        width: 80,
                                        child: CircleAvatar(
                                          radius: 40,
                                          child: Text(
                                            stikers[index],
                                            style: TextStyle(fontSize: 25),
                                          ),
                                          backgroundColor: tanlov1 != index
                                              ? Colors.transparent
                                              : Colors.white,
                                        ),
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: new Border.all(
                                              color: tanlov1 == index
                                                  ? Colors.red
                                                  : Colors.white24),
                                          color: Color(0xFF30444D),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Text(
                                        names[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      height: 60,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                tanlov2 = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: tanlov2 != index
                                      ? Color(0xFF30444D)
                                      : Colors.tealAccent.shade400,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        difStik[index],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                      Text(
                                        different[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                tanlov = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: tanlov == index
                                          ? Colors.red
                                          : Colors.transparent, width: 2.0),
                                  color: Color(0xFF30444D),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        stiker[index],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Container(
                                          width: 100.0,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border:
                                                Border.all(color: Color(0xFF3DD598), width: 3.0),
                                            color: Color(0xFF30444D),
                                          ),
                                          child: Text(
                                            sportStik[index],
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 22, top: 10),
                                    child: Text(
                                      sports[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                  ] +
                  List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF30444D),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Color(0xFF3DD598), width: 3.0),
                                  color: Color(0xFF30444D),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 25),
                                  child: Text(
                                    sportStik[index],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              sports[index],
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Text(
                              "\$ ${money[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(width: 8.0),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Icon(
                                CupertinoIcons.chevron_down,
                                color: Colors.white54,
                                size: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) +
                  [],
            ),
          ],
        ),
      ),
    );
  }
}
