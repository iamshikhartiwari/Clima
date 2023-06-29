import 'package:flutter/material.dart';

class ButtonTapped extends StatelessWidget{

  var icon;

  ButtonTapped({

    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(

        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Icon(icon, size: 35, color: Colors.grey[700],),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xE0E0E0FF),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black54,
                    Colors.black38,
                    Colors.black26,
                    Colors.black12,
                  ],
                  stops: [
                    0,
                    0.1,
                    0.3,
                    1
                  ]
              )
          ),

        ),

        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black12,
                  Colors.black26,
                  Colors.black38,
                  Colors.black54
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ]
            )
        ),

      ),
    );
  }

}