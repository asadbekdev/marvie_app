import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF203139),
      bottomNavigationBar: Container(
        height: 110.0,
        padding: EdgeInsets.only(top: 20.0),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xFF30444D),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF3DD598),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              shadowColor: Color(0xFF3DD598),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
              child: Text(
                "Proceed to Checkout",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 24.0),
            Container(
              height: 280.0,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 20.0),
                            alignment: Alignment.bottomLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.white,
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: NetworkImage(
                                    "https://a.lmcdn.ru/pi/img600x866/M/A/MA002BWGVQI8_9616592_9_v1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 16.0,
                              child: Icon(
                                Icons.favorite,
                                size: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          "Belt suit blezer",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "\$120",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 20.0),
                            alignment: Alignment.bottomLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.white,
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: NetworkImage(
                                    "https://a.lmcdn.ru/pi/img600x866/M/A/MA002BWGVQI8_9616592_9_v1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 16.0,
                              child: Icon(
                                Icons.favorite,
                                size: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          "Belt suit blezer",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "\$120",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 280.0,
              margin: EdgeInsets.symmetric(vertical: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 20.0,
                            ),
                            alignment: Alignment.bottomLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.white,
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: NetworkImage(
                                    "https://a.lmcdn.ru/pi/img600x866/M/A/MA002BWGVQI8_9616592_9_v1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 16.0,
                              child: Icon(
                                Icons.favorite,
                                size: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          "Belt suit blezer",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "\$120",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 20.0),
                            alignment: Alignment.bottomLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.white,
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: NetworkImage(
                                    "https://a.lmcdn.ru/pi/img600x866/M/A/MA002BWGVQI8_9616592_9_v1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 16.0,
                              child: Icon(
                                Icons.favorite,
                                size: 12.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          "Belt suit blezer",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "\$120",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 210.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: NetworkImage(
                      "https://fazarosta.com/wp-content/uploads/2018/09/kak-zavoevat-devushku-10-sovetov-kotorye-privedut-vas-k-provalu-10.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24.0, bottom: 8.0),
                      child: Text(
                        "Belt suit blazer",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "\$120",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16.0,
                      child: Icon(
                        Icons.favorite,
                        size: 12.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: NetworkImage(
                                "https://img1.stylowi.pl/images/items/l/201909/573915689334274466.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    flex: 5,
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The North face 100 glacier 1/4 zip",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          "\$ 90.0",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    flex: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Text(
                            "1x",
                            style: TextStyle(
                                color: Color(0xFF3DD598), fontSize: 12.0),
                          ),
                          radius: 14.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      CircleAvatar(
                        backgroundColor: Color(0xFF3DD598),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        radius: 14.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: NetworkImage(
                                "https://i4.skapiec.pl/1/bB_ktkraW1hZ2VzLzEyZDgwMTdlMjI2ZWMxNjcyMWQ5YWViODMwYjVlZTIyLmpwZ5OVAs0CvADCw5UCAM0CvMLDkwmmZWM3NzAwBg/cropp-cropp-bluza-z-kaczorem-donaldem-zolty.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    flex: 5,
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The North face 100 glacier 1/4 zip",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          "\$ 90.0",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    flex: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Text(
                            "1x",
                            style: TextStyle(
                                color: Color(0xFF3DD598), fontSize: 12.0),
                          ),
                          radius: 14.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      CircleAvatar(
                        backgroundColor: Color(0xFF3DD598),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        radius: 14.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Container(
                      height: 80.0,
                      width: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color(0xFF3DD598),
                      ),
                      child: ImageIcon(
                        NetworkImage("https://f.nodacdn.net/299776"),
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Total:",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "\$180.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade600,
                          thickness: 1.0,
                          height: 8.0,
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
