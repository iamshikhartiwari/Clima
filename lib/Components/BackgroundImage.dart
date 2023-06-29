import 'package:flutter/material.dart';
class BackgroundImage  {

  var condition;
  BackgroundImage(this.condition);
  Widget getBackgroungImage()
  {
    if(condition<300 && condition>200)
      return Image(image: AssetImage('images/thunder.jpg'),
        fit: BoxFit.cover,
      );
    else if(condition<350)
      return Image(image: AssetImage('images/drizzle1.jpeg'),
        fit: BoxFit.cover,);
    else if(condition < 400)
      return Image(image: AssetImage('images/drizzle2.jpg'),
        fit: BoxFit.cover,);
    else if(condition < 400)
      return Image(image: AssetImage('images/drizzle2.jpg'),
        fit: BoxFit.cover,);
    else if(condition < 600)
      return Image(image: AssetImage('images/rain.jpg'),
        fit: BoxFit.cover,);
    else if(condition < 700)
      return Image(image: AssetImage('images/snow.jpeg'),
        fit: BoxFit.cover,);
    else if(condition < 800)
      return Image(image: AssetImage('images/fog.jpg'),
        fit: BoxFit.cover,);

    else if(condition == 800)
      return Image(image: AssetImage('images/clear.jpg'),
        fit: BoxFit.cover,);
    else if(condition <=804 && condition>800)
      return Image(image: AssetImage('images/cloudss.jpg'),
        fit: BoxFit.cover,);
    else
      return Image(image: AssetImage('images/grass.jpg'),
        fit: BoxFit.cover,);
  }


}
