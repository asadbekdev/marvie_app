import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF203139),
          child: ListView(
            padding: EdgeInsets.all(
              20.0,
            ),
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                // Tepadagi Text Qismi
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Feed",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF3DD598),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(0.0),
                            leading: Container(
                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: 55.0,
                              height: 60.0,
                              child: Center(
                                child: Icon(
                                  Icons.star_border,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            title: Text(
                              "Weekly",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "Progress",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            child: Text(
                              "It looks like you are on track. Please continue to follow your daily plan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        radius: 28.0,
                        backgroundColor: Colors.white54,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24.0,
                          child: Text(
                            "ok",
                            style: TextStyle(color: Color(0xFF3DD598)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF30444D),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                height: 300.0,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF30444D),
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/1f75/ff11/8d77f15ec8f452d869717e47897a6b89?Expires=1630281600&Signature=IbpxCgFkZ9AhK5Jc5Ys~uwRXisrn6n6NBXKKB3l3HRqupq1bgoLosB5Gqf0y626ac1DMcnhUHklMtIjmPnKSdXSbyJlPaBJrIEg~d97IPZW2-Vrb0qzdJxbT2Wdt6OL6EVLws2q3tyA3s4uNGRpG~Qs89iFd6NooAEVzzaIn4sLhLFA8Y9pXkC~5bMD39d91tsDNufo~GxuryIrZBAKkgz70YAxogctHxQ2oZT4W1RgixxDEM1ZlQuLOplsSRNeAcEKDn9sr9BYnZTxRf2DWvgPpEQKAtE4x-3gbPKq9K3OwWrimmUpryCa30bED3Tx7WU3tDcAjy85Sx2XD75ug-g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Weekly Progress",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.white54,
                          size: 16.0,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          "42 likes",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "Weekly Progress on dieting",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 350.0,
                color: Color(0xFF203139),
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      // 1-toglik rasm uchun
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/79ec/a98a/8000ed5b4577399765fc1b31d0bd1258?Expires=1630281600&Signature=LGZqh1C8-oGQNXtibE1~ZxJvaezT~lzFrXQ~bE6JFVMlASJIWhqQtIC50vU2WudZB2xfUo1COOAs41ieJNXDB8gnUf5PdZsYQeR4LTRixWoGD35tn1zQ~kMgncupj6ylElTEqpEz0zvV-qD37Vl9OSifp1JX2wE0el9c6Rv-Wnt~7M18y-KnQN~560BmbB09L7a-0gaWgBLpIZ3f~Dpfj7D5iGACeg3I6~faMYwXsNObLnjSQ5ymWNfdb~~uV0i13006hnPFyFSJ7r91kCV~dGGexJpuui39TdsEZMBi7KewybjUKtJ5qslI7j71eGdC~CDSp1k1WoDUtshCKYg3OQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: 200.0,
                      height: 300.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 30.0,
                        ),
                        child: Text(
                          "When you\nwake up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      // 2-kuzlik rasm uchun
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/d7db/3196/265e06e09dcb6e1accb2be71d73dd27f?Expires=1630281600&Signature=HbyeEmpXFzq39ukTPUOYPy2G09KFOJUR3F4XVo-CzEGp1USRL7XS1Ukxwq9~b29iYV31v60BO4KwJf2sqotUy7lZSXGOb9QiISNX5ABvGhAfr3-zf5AWEf5zzcMbq1AmWqLjt8i6d~QXFzNme-J4VkwXsl6Hugkt07i6Njm4B3-qslKsgY4j18hy0XPBHLvUI4EwM6GSeffEO58nMeKQ5FP4dG5d-F-r5sxZhmFwIFn95JciTcahZutEdbKpXXIbogQSgwntZ3Ud21y1FaNV4sOWDXLKzwwlMHr4SpaSZBcQQmPzFwVp3ZboJQGviUaQqCRXg9N~dKfD5f4~W3ZIVQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: 200.0,
                      height: 300.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 30.0,
                        ),
                        child: Text(
                          "When you\nwake up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      // 3-yozlik rasm uchun
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/ee30/2e61/1788a78c0e109591c1a642e77505fa9c?Expires=1630281600&Signature=IPk1EpbdNfFB3UWnoygpB5d6pDmdDSPtM3vlmLNGcCaR~eBq-~cAVQBsLuX6xMSGZOa2LSzgwQcKxfUywZCRPD5PInG1tVB-W8ynn1en2qPAMiQprEJ~IdXm9Wy4U7rQGOC9gNLJ8i6jvFoLSHWg2slwb9u~m6OLR8azuT8psmXp~65uVj0mxt89P5ETh2B49R2fG1GsgQ7qo3cwRXdQQBlmZ-79-VPK9zQSADD6po2dYMKnPO8IaK-fJbKUMG6Mp4ZmOIXeUTM1h9Zf70NL7jUeBsw6rPzMXdCIbVj4m3DXii3Ql2WuslCDYI9j7L5snhWsNXHwLXKxzAopOAIugA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: 200.0,
                      height: 300.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 30.0,
                        ),
                        child: Text(
                          "When you\nwake up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      // 4-qishlik rasm uchun
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/b306/d5e4/89f33599608cef9120d79b43bb6a89eb?Expires=1630281600&Signature=ZpIp8Y5mYXfKGIUrsVDHWVJRfHXJBFAv6K78v144sguET8Q~DMpg-1pXCv~Mhk46KcXI~GYVrgObcj9HrEHoS2jjDh-Gd88ITtE0HpAT77PFKdF1iYzqIe9JL0TSpMTdcisEV8aHKisPxvvSq1BoKxbmZgiZaoV~pIXW8O04Giul4d5iRtSOc6fhSWpvNmPsU4TKNgIUP5zlGhXha1MW5M4341QeBmZ37YJ-GwNzkITZwwKazrZThUJwIiSCne4hMww806KsRamreVuYr4QwH3lkwyFNDnV4TH2LUFQkca82K3ZiOyjnse6yLUnHpgU0SB1qe3Wsheb1Pgl26L6BgA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: 200.0,
                      height: 300.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 30.0,
                        ),
                        child: Text(
                          "When you\nwake up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                height: 230.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          top: 30.0,
                        ),
                        child: Text(
                          "When you\nwake up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 30.0,
                        ),
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/1df6/2e99/ad124e0da6637d8d638f46b8e44fa5fc?Expires=1630281600&Signature=LvvC7QwSPoarm-2gfOUlWiitWUlzMQ8WlPTmKcRKw4PGxc4x6y-4M-l8G6PzghMGW9lGiY3Ui0WtNPHSiffO3NwatSxyxY7sbA2LDL9fsV4ejjV8dlm-Ucf3VdFvn~asyFIUeH-JkZ3Vvd3uVErMTfeJFV5KpAQmy6KXI63xhPiogySLUeowr0htRT6YSo7NOX7rmxz-kMRmo4I86fHjR2hjshKyhFrM44sY5KLZ8MxIogjlBChzuVOpjOd3pTKnvYqG9NbxhHdA9~IKEXXwYLGqFfjFPaTfslgvEoxS-dtDhhf5~Gbx6E6HkqirybYOAICCcADGyDABkd9r433P7w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          width: 200,
                          height: 120,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      // 1- Column
                      children: [
                        Container(
                          // 1- container
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          height: 200.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, left: 20.0),
                                child: Text(
                                  "When you\nwake up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 24.0,
                                  ),
                                  child: Image.network(
                                    "https://s3-alpha-sig.figma.com/img/87c2/67d0/c07b3d91b63290fbdeb183d9ebabd35c?Expires=1630281600&Signature=hM2q9mLn9K~AW25t7IoKglKEMeP1llfRP3ZHsq~3Mzx9GL5pEhrjyvOQ~oZVzcgsah3qJxgn0O4I7SSuQwmQ1E3wHceknsmmIkmZWKU0raxDIHbxRWmoBSxZEq4eYuNAz95qYTJS5jSgXq2nrDSrobs2P32UGiayY-NeVnsYm1xoPfXITYNcAfa7m2ifC~7fqZNGQ6v7vGPoIfqPirtgp3e-nHtPEs6o9RsgbZZOKNsvzT9Ey-EwFcHFPJi8y-mwKzXkptM1DoivskJ9~WJAghGxwS~RZAa96Qwa3OBCmzD~8ItiBSV-pJCAuIBSlBQDvbNzUm8KApkrW-GB3dQ~ew__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          // 2- Container
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          height: 260.0,
                          padding: EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "When you\nwake up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.network(
                                  "https://s3-alpha-sig.figma.com/img/0c14/7bc4/38d264926adae77aabece3d8d9af2ee0?Expires=1630281600&Signature=IyPs21h~6Rxd30~zKoluK8n4XJtZy9vvZRNaFoJzv8SGyqXuvQSTx18SE39M5HJjMVGLzGTky6JTQaGC-igJL7WQmYM2qaOiJWGDZZ6xaB~Cyg747NSIchT9lzYB5oAwZxc33VTCEpmzHVHZ9m2z1sT19PDwWv0Jvpn32z9PSh5tV3hlCb7Yl3bERO5NNqCUoFUjNMhF7bxBRyM56F8Pum50L8bKFOeRV3JoKwjCaXjXEy2ia8uxkQhqLhIJ-3U~Q2DuqRHVt4Cl-PNOiBCXBtMIabyLh0SdUL2xbi7nLiDn1zfYji8copTwk3usRqTOrzSUxL5THVlsnw5~IozZiQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                                  height: 150,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      // 2-Column
                      children: [
                        Container(
                          //3- Container
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          padding: EdgeInsets.all(18.0),
                          height: 240.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "When you\nwake up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.network(
                                    "https://s3-alpha-sig.figma.com/img/4bf9/fd00/ca8c78dbd648e25f0c959265f74e70ac?Expires=1630281600&Signature=ck0dtXV5IpeLyQuRqut3cYkWyzl1NU01DQvmab2xJrc7AuTdNpxY3uJwmXNfIrxeeADswfIrYG4Dff6cJ3yqsf0zxKGMbMNmNHcjqScxIS-42jV70b6NpvwpWgFQqu1TtRS3I2buFv1kIjZ33NRlNg80IBUfxWjs8LCTuJqk1XzioOw-TWtsbGhSY~H-6UIrnOpO8jvE53veswiqj2VNucgwWrL8jpD16m3vvvGsdwP2h~m2CCnHnaH05~og2sYzAXjjCj0ekI7UiiH8hC1iqxlntumKUZHXci4ucMVe4FPbULAEC9rjSvJkQm9hcYOnEeHjalPa0JOsBbQcq16NHA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          // 4- Container
                          decoration: BoxDecoration(
                            color: Color(0xFF203139),
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                              color: Colors.greenAccent,
                              width: 2,
                            ),
                          ),
                          height: 200.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: 28.0,
                                  backgroundColor:
                                      Color(0xFF3DD598).withOpacity(0.4),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xFF3DD598),
                                    radius: 24.0,
                                    child: Icon(
                                      CupertinoIcons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Add new item",
                                style: TextStyle(
                                  color: Color(0xFF3DD598),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF3DD598),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                height: 350.0,
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF3DD598),
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(color: Colors.white, width: 2),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://berserkon.com/images/map-transparent-city.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Burger King",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        Text(
                          " 4.9 - American Kitchen",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: Text(
                            "20 - 30 min",
                            style: TextStyle(
                                color: Color(0xFF3DD598),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Text(
                            "2.1 km",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade200.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                height: 130.0,
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
                      "Statistics for 8 PM",
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
                      Icons.play_circle_fill,
                      size: 50,
                      color: Color(0xFF3DD598),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                height: 130.0,
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
                      "Feed for 8 PM",
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
                      Icons.play_circle_fill,
                      size: 50,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
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
              Container(
                // Jo'ja kontainer
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF30444D),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                height: 150.0,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 80.0,
                      height: 80.0,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/a1ff/1076/eba593deee0095f6379f38aae47a22ac?Expires=1630281600&Signature=D~FdWV0UKZl2bDZv9xQwcyGJMA7uQFlpB6vgWVzKjsiZ1Isz20KM2tYwsEbklEX7UkFGq00UNkEAJPjtf~EF7l9OWTgzG95ZCYvo2o2~k3zeqwmYBD4lPEQykLec-sr-MYphLqfEuPWle2AZSUgDsdC7PX2E9julUFoAQho7Mc5CpnuIzHhZUj406BUHbLYjKo4DFXr6EzlN8WXbe7mAfwwbipa9bsInTKBLjFxRZw0ks4k2tR6BAaqKyI~3rdf9ZVBtyitE2GSNm~oLsPHvUxUJ4pQJm2H4DGr~bujTDYbksoUeawnINaL4Q8t3Qjnr5uVEUhnqrJEyTf3zA98ltQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.stop_circle_fill,
                                color: Colors.greenAccent,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                "Offer Expiring soon",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Booked for 8 PM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0))),
                              onPressed: () {},
                              child: Text("Open"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // Jo'ja kontainer
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF30444D),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                padding: EdgeInsets.all(24.0),
                height: 150.0,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 80.0,
                      height: 80.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          "https://s3-alpha-sig.figma.com/img/1df6/2e99/ad124e0da6637d8d638f46b8e44fa5fc?Expires=1630281600&Signature=LvvC7QwSPoarm-2gfOUlWiitWUlzMQ8WlPTmKcRKw4PGxc4x6y-4M-l8G6PzghMGW9lGiY3Ui0WtNPHSiffO3NwatSxyxY7sbA2LDL9fsV4ejjV8dlm-Ucf3VdFvn~asyFIUeH-JkZ3Vvd3uVErMTfeJFV5KpAQmy6KXI63xhPiogySLUeowr0htRT6YSo7NOX7rmxz-kMRmo4I86fHjR2hjshKyhFrM44sY5KLZ8MxIogjlBChzuVOpjOd3pTKnvYqG9NbxhHdA9~IKEXXwYLGqFfjFPaTfslgvEoxS-dtDhhf5~Gbx6E6HkqirybYOAICCcADGyDABkd9r433P7w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Booked for 8 PM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "This is an event manager that will help you choose the most interesting exhibition",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12.0,
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
      ),
    );
  }
}
