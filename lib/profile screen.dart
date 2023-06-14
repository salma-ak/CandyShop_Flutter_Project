import 'package:ecommerce_pro/side%20bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: Colors.cyan,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => sidebar()),
                  (Route<dynamic> route) => false,
              //it clears the navigation stack and sets the specified route as the new root of the navigation stack.
            );



            // What to do when the user taps the back button
            // Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
             // backgroundImage: AssetImage('assets/profile_picture.jpg'),
              backgroundColor: Colors.cyan,
            ),
            const SizedBox(height: 16),
            const Text(
              'Salma ahmed',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'salma@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 50.0,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the edit profile screen
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan, // Change button color here
                minimumSize: Size(150, 50), // Increase button width here
              ),
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
