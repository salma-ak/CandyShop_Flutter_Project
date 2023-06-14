import 'package:ecommerce_pro/side%20bar.dart';
import 'package:ecommerce_pro/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.cyan.shade200,
      backgroundColor: Colors.white,
      body: Padding(
        padding : const EdgeInsets.all(20.0), //3shan azo2 el column kolo
        child :Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text (
              "Login",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
               // color: Colors.purple.shade200,
                color: Colors.cyan.shade200,
              ),
            ), //HEAD LOGIN
            SizedBox(
              height: 40.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.purpleAccent.shade100),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.purpleAccent.shade100), //<-- SEE HERE
                ),
                labelText: "Email Address",
                prefixIcon: Icon(
                  Icons.email,
                ),
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
                prefixIcon: Icon(
                  Icons.lock_outline,
                ),
                //suffixIcon: Icon(
                 // Icons.remove_red_eye_rounded,
                //),
                border: OutlineInputBorder(
                )

                //),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 60,right: 60),
              width : 200.0,
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
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.cyan.shade200,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,

                  ),

                ),
                TextButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                        (Route<dynamic> route) => false,
                  );
                },
                  child: Text(
                      "Sign up",
                    style: TextStyle(
                      color: Colors.purpleAccent.shade100,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}