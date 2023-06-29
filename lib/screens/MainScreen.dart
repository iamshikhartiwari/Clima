import 'dart:ui';
import '../Components/Glass.dart';
import '../Components/Button.dart';

import 'package:flutter/material.dart';
import '../Components/ButtonTapped.dart';

import '../utilities/Constants.dart';
import 'Search.dart';
import '../Survices/Weather.dart';
import '../Components/BackgroundImage.dart';
class MainScreen extends StatefulWidget {
  var temp;
  var cityname;
  var CountryName;
  var humidity;
  var visibility;
  var pressure;
  var wind;
  var id;
  String desc;

  MainScreen(this.temp, this.cityname, this.CountryName,this.humidity,this.visibility,this.pressure,this.wind,this.desc,this.id);

  @override
  _MainScreen createState() => _MainScreen(temp, cityname, CountryName,humidity,visibility,pressure,wind,desc,id);
}

class _MainScreen extends State<MainScreen> {
  var temp;
  var cityname;
  var CountryName;
  var humidity;
  var visibility;
  var wind;
  var pressure;
  var  id;
  String desc;

  // var desc;


  bool buttonPressed = false;
  bool button1Pressed = false;

  _MainScreen(this.temp,this.cityname, this.CountryName,this.humidity,this.visibility,this.pressure,this.wind,this.desc,this.id);


  Widget getCont(String text,Color c1){
    Size size=MediaQuery.of(context).size;

    return
      Container(
        width: double.infinity,


        child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: size.height*0.04,
              fontWeight: FontWeight.w100,
              fontFamily: "Righteous",
              color: c1



          ),
        ),
      );

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;



    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child:  BackgroundImage(id).getBackgroungImage()
              ),
              Glass(size.height * 0.9, size.width * 0.9),

              Column(

                children: [

                  Container(
                    margin: EdgeInsets.only(top:30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(
                          Icons.cloud_outlined,
                          color: Colors.black,
                          size: size.height*0.1,
                        ),
                        Text(desc.toString(),
                            style: countryNameStyle(size)
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height:size.height*0.000001),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          cityname.toString()+", ",
                          style: cityNameStyle(size)
                      ),
                      Text(CountryName.toString(),
                          style: countryNameStyle(size)
                      ),
                    ],
                  ),
                  SizedBox(height:size.height*0.01),
                  Text(
                      temp.toStringAsFixed(1) + '°C',
                      style: tempStyle(size)
                  ),




                  SizedBox(
                    height: size.height*0.04,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        getCont("HUMIDITY",Colors.black),
                        getCont(humidity.toString(),Colors.white),
                        getCont("PRESSURE",Colors.black),
                        getCont(pressure.toString(),Colors.white),
                        getCont("VISIBILITY",Colors.black),
                        getCont(visibility.toString(),Colors.white),
                        getCont("WIND SPEED",Colors.black),
                        getCont(wind.toString(),Colors.white),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     setState(() {
                            //       button1Pressed = !button1Pressed;
                            //       Navigator.push(context,MaterialPageRoute(builder: (context)=>MoreInfo(humidity,visibility,pressure,wind)));
                            //
                            //     });
                            //   },
                            //   child: button1Pressed
                            //       ? ButtonTapped(
                            //           icon: Icons.read_more_outlined,
                            //         )
                            //       : MyButton(icon: Icons.read_more_outlined),
                            // ),
                            // SizedBox(width: size.width*0.1),
                            GestureDetector(

                              onTap: () {
                                setState(() {
                                  buttonPressed = !buttonPressed;
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>SearchScreen())
                                  );


                                });
                              },

                              child: buttonPressed
                                  ? ButtonTapped(
                                icon: Icons.search,
                              )
                                  : MyButton(icon: Icons.search,size: size,),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),






                ],
              ),
            ],
          ),
        ));
  }
}
