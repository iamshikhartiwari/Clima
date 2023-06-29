import 'package:flutter/material.dart';


class Glass extends StatelessWidget {
  final double height;
  final double width;
  Glass(this.height,this.width);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),

              child: Opacity(
                opacity: 0.15,
                child: Image(image: AssetImage('images/noise.png'),

                  height: height-0.1,
                  width: width-0.1,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,



                ),),

            ),
          )
          ,Center(
            child: Container(

                width: width,
                height: height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.6),
                          Colors.grey.withOpacity(0.6),


                        ]

                    ),
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.white.withOpacity(0.2),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        blurRadius: 40,
                      ),
                    ])),
          ),

        ],
      ),
    );
  }
}