import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Weather {
  String url;
  Weather(this.url);

  Future<dynamic> getWeather() async {
    Response response = await get(Uri.parse(
        url));
    // if(response.statusCode==200)
    //   {
    var data = json.decode(response.body);
    return data;
    // }
    // else
    //   print(response.statusCode);
  }

}