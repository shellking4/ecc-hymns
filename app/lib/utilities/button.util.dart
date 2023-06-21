import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? color;
  final String? title;
  final double width;
  final VoidCallback onPressed;

  const RoundedButton(
      {Key? key,
      this.color,
      this.title,
      required this.width,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(18.0),
        child: MaterialButton(
            onPressed: () => onPressed,
            minWidth: width,
            height: 35.0,
            child: Text(
              title as String,
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0, fontFamily: "Kiwi"),
            )),
      ),
    );
  }
}
