import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  var icon;
  var size;

  MyButton({

    this.icon,
    this.size,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(

        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          size: size.height*0.04,
          color: Colors.grey[800],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(

                offset: Offset(4.0, 4.0),
                blurRadius: 5.0,
                spreadRadius: 1.0,
                color: Colors.black,
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 10.0,
                  spreadRadius: 0.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black12,
                  Colors.black26,
                  Colors.black38,
                  Colors.black54,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}