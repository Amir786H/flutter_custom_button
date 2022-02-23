// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

library flutter_pkg;

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  final Widget child;
  var style;
  CustomButton(
      {Key? key, @required this.onPressed, required this.child, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
        ),
      ),
      child: FlatButton(
        child: Text(
          "Click Me",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
    // return TextButton(
    //     onPressed: onPressed,
    //     style: TextButton.styleFrom(
    //       padding: const EdgeInsets.all(16.0),
    //       primary: Colors.white,
    //       backgroundColor: Colors.purple,
    //       elevation: 9.0,
    //       textStyle: const TextStyle(
    //         fontSize: 20,
    //       ),
    //     ),
    //     child: child);
  }
}
