

import 'package:clima/Screens/MainScreen.dart';

import 'package:flutter/material.dart';
import  '../Survices/Location.dart' ;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import'../Survices/Weather.dart';
import 'package:clima/screens/Search.dart';
const  apikey= '0d49ad1dd8b4ebd0f38650524666a5fc';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var lat;
  var lon;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLoc();

  }

  getLoc()async{
    LocationData ld=LocationData();
    await ld.getLocation();
    lat=ld.latitude;
    lon=ld.longitude;
    Weather w=Weather('http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apikey&units=metric');
    var decode=await w.getWeather();
    var temperature=decode["main"]["temp"];
    var cityName=decode['name'];
    var Country=decode['sys']['country'];

    var humid=decode['main']['humidity'];
    var press=decode['main']['pressure'];
    var vis=decode['visibility'];
    var wind=decode['wind']["speed"];
    String desc= decode["weather"][0]["description"];
    var id= decode["weather"][0]["id"];
    print(decode);
    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return MainScreen(temperature,cityName,Country,humid,vis,press,wind,desc,id);
        })
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:Center(
        child: SpinKitWanderingCubes(
          color: Colors.red,
          size: 50.0,
        ),
      ),
    );
  }
}