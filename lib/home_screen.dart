import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  List<int> i =[3,5,4];
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: Colors.purpleAccent.shade100,
        leading:
        Icon(
          Icons.menu,
        ),
        title: Text(
          "Candy Shop",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.notification_important ,
          ),
          Icon(
            Icons.search ,
          ),
        ],
      ),

      body: Center(
        child: Image.network(
          "https://th.bing.com/th/id/R.c1e965ba3eeac7f10d1b3522d05fc166?rik=8MB1g2yJIrNSIw&riu=http%3a%2f%2fres.cloudinary.com%2foccsn%2fimage%2ffetch%2fdpr_auto%2cc_fill%2cg_auto%2ch_540%2cw_720%2fhttps%3a%2f%2fres.cloudinary.com%2foccsn%2fimage%2fupload%2fv1615592145%2fproducts%2f8iEtHQCG_pic8fz.png&ehk=FC9DaL%2b2zw5liacFEo4zQgSL7uyEXEjzU11Tml2q%2bVE%3d&risl=&pid=ImgRaw&r=0",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
