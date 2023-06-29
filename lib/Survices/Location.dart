import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
const  apikey= '897dc33f121b556e51106dfa23131297';

class LocationData{
  var latitude;
  var longitude;

  Future<void> getLocation() async {
    Position position= await  Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude=position.latitude;
    longitude=position.longitude;

  }


}