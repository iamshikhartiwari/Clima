import 'package:flutter/material.dart';

dynamic tempStyle(Size s) {
  return TextStyle(
    color: Colors.black87,
    fontSize: s.height*0.10,
    fontWeight: FontWeight.bold,
    fontFamily: "Temp",
  );
}

dynamic countryNameStyle(Size s) {
  return TextStyle(
    fontSize: s.height*0.04,
    color: Colors.black54,
    fontWeight: FontWeight.bold,
    fontFamily: "Righteous",
  );
}
dynamic cityNameStyle(Size s){
  return TextStyle(
    fontSize: s.height*0.04,
    fontFamily: "Righteous",
  );
}