import 'package:clima/screens/LoadingByCity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Components/Glass.dart';
import 'package:clima/screens/Loading.dart';

import '../Survices/Location.dart';
import '../Survices/Weather.dart';
import 'MainScreen.dart';
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

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var city;


  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    double A=(size.height*size.width);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width:size.width,
            height: size.height,
            child: Image(image: AssetImage('images/city.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Glass(size.height*0.9, size.width*0.9),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: size.width*0.7,
                  child: TextField(
                    style: TextStyle(
                      fontFamily: "Righteous",
                      fontSize: A*0.0001,
                    ),
                    onChanged: (value){
                      city=value;
                    },


                    decoration: InputDecoration(
                      hintText: 'Enter Your City',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),


                    ),



                  ),
                ),
              ),
              SizedBox(height: size.height*0.1,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Click Me For ",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Righteous",
                    ),
                  ),
                  Icon(Icons.cloud_outlined,
                      size:70
                  )
                ],
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
