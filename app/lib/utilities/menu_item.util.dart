import 'package:flutter/material.dart';

// ignore: camel_case_types
class Menu_Item extends StatelessWidget {
  final String title;
  final IconData? icon1;
  final IconData? icon2;
  final dynamic screen;
  final Color? color;

  const Menu_Item({Key? key, required this.title, this.icon1, this.icon2, this.color, this.screen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5.0),
      child: Material(
        elevation: 0.0,
        color: color,
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
            },
            padding: EdgeInsets.symmetric(horizontal: 10),
            minWidth: 10.0,
            height: 20.0,
            child: Row(children: <Widget>[
              Icon(
                icon1,
                color: Colors.black,
                size: 12,
              ),
              Icon(
                icon2,
                color: Colors.black,
                size: 12,
              ),
              SizedBox(
                width: 5,
              ),
              Text(title,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.black, fontFamily: "InterRegular"))
            ])),
      ),
    );
  }
}
