// TODO Implement this library.import 'package:clima/Screens/MainScreen.dart';

import 'package:flutter/material.dart';
import  '../Survices/Location.dart' ;
import'../Survices/Weather.dart';
import 'MainScreen.dart';
const  apikey= '0d49ad1dd8b4ebd0f38650524666a5fc';

class HomePage extends StatefulWidget {
  var city;
  HomePage(this.city);




  @override
  _HomePageState createState() => _HomePageState(city);
}

class _HomePageState extends State<HomePage> {
  var city;
  _HomePageState(this.city);






  getWeathers() async{
    Weather w = Weather('http://api.openweathermap.org/data/2.5/weather?q=$city,uk,&appid=$apikey&units=metric');
    var decode = await w.getWeather();
    var temperature = decode["main"]["temp"];
    var cityName = decode['name'];
    var Country = decode['sys']['country'];

    var humid = decode['main']['humidity'];
    var press = decode['main']['pressure'];
    var vis = decode['visibility'];
    var wind = decode['wind']["speed"];
    String desc= decode["weather"][0]["description"];
    var id= decode["weather"][0]["id"];
    // String desc= decode['weather']['description'];

    print(decode);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return MainScreen(
              temperature,
              cityName,
              Country,
              humid,
              vis,
              press,
              wind,
              desc,
              id



          );
        })
    );

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeathers();
    print("yes");
  }




  @override
  Widget build(BuildContext context) {
    print(city);



    return Scaffold(
      appBar: AppBar(
        title: Text("wlcm",
        ),
        // body:Center(
        //   child: SpinKitWanderingCubes(
        //     color: Colors.red,
        //     size: 50,
      ),
    );

  }
}



