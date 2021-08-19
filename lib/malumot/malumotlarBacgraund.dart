import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;

  const Background({
    Key? key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: size.height,
                width: size.width * 0.46,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/yoni.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            child!,
          ],
        ),
      ),
    );
  }
}
