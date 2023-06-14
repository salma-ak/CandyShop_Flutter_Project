import 'package:ecommerce_pro/side%20bar.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0), //3shan azo2 el column kolo
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.cyan.shade200
                  ,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.purpleAccent.shade100),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.purpleAccent.shade100), //<-- SEE HERE
                  ),
                  labelText: "first name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.purpleAccent.shade100),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.purpleAccent.shade100), //<-- SEE HERE
                  ),
                  labelText: "Second name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.purpleAccent.shade100),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.purpleAccent.shade100), //<-- SEE HERE
                  ),
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true ,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent.shade100),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.purpleAccent.shade100), //<-- SEE HERE
                    ),
                    labelText: "password",
                    border: OutlineInputBorder(
                      //border: Border.all(
                      // color: Colors.white,
                    )

                  //),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true ,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent.shade100),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.purpleAccent.shade100), //<-- SEE HERE
                    ),
                    labelText: "Confirm password",
                    border: OutlineInputBorder(
                    )

                  //),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 60,right: 60),
                width : double.infinity,
                color: Colors.purpleAccent.shade100,
                child : MaterialButton(
                  onPressed: ()
                  {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => sidebar()),
                          (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    'log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),

                  ),
                ),
              ),

            ],

          ),
        )

    );
  }
}