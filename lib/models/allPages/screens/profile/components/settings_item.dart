import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsItem extends StatelessWidget {
  SettingsItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconBgc,
    required this.actions,
  }) : super(key: key);
  var title, icon, iconBgc;
  List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30444d),
      child: Container(
        margin: EdgeInsets.only(left: 15.0),
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0, right: 15.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFF35464d),
            ),
            bottom: BorderSide(
              color: Color(0xFF35464d),
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: iconBgc,
                borderRadius: BorderRadius.circular(5.0),
              ),
              alignment: Alignment.center,
              child: Icon(
                icon,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Text(
                "$title",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Row(
              children: actions,
            ),
          ],
        ),
      ),
    );
  }
}
