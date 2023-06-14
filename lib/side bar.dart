import 'package:ecommerce_pro/profile%20screen.dart';
import 'package:ecommerce_pro/view%20cart%20screen2.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class sidebar extends StatelessWidget {
  const sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: Colors.cyan,
        title: Text(
          "Candy Shop",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer( //side bar mn left to right
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Text(
                    'Candy Shop',
                      style: TextStyle(
                      color: Colors.white,
                        fontSize: 27,
                      fontWeight: FontWeight.bold,
          ),
        ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile', style: TextStyle(color: Colors.purpleAccent)),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                      (Route<dynamic> route) => false,
                );// it clears the navigation stack and sets the specified route as the new root of the navigation stack.
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('My orders', style: TextStyle(color: Colors.purpleAccent)),
              onTap: () {
                // Navigate to the my orders screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text('Cart', style: TextStyle(color: Colors.purpleAccent)),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ViewCartScreen()),
                      (Route<dynamic> route) => false,
                );// it clears the navigation stack and sets the specified route as the new root of the navigation stack.
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out', style: TextStyle(color: Colors.purpleAccent)),
              onTap: () {
                // Show logout confirmation dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {  //ytla3 f nafs el screen ely wa2fha feha
                    return AlertDialog(
                      title: const Text("Log out"),
                      content: const Text("Are you sure you want to log out?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                                  (Route<dynamic> route) => false,
                            );

                            // Log out the user and navigate to the login screen
                           // Navigator.popUntil(context, ModalRoute.withName('/'));
                          },
                          child: const Text("Log out"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: isPortrait ? 1 : 4,
                padding: const EdgeInsets.all(16),
                //childAspectRatio: isPortrait ? 0.75 : 1,
                children: [
                  _buildCandyCard(context, 'Sour Worms', 'images/candy.jpg'),
                  _buildCandyCard(context, 'Gummy Bears', 'images/R.jpg'),
                  _buildCandyCard(context, 'Lollipops', 'images/R (1).jpg'),
                  _buildCandyCard(context, 'Jelly Beans', 'images/R (2).jpg'),
                ],
              ),
            ),
            Container(  //view cart button
              margin: EdgeInsets.only(left: 20,right: 20),
              width : double.infinity,
              color: Colors.cyan,
              child : MaterialButton(
                onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ViewCartScreen()),
                        (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  'View Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18


                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCandyCard(BuildContext context, String name, String imagePath) {
    int quantity = 0;

    return GestureDetector(
      onTap: () {
        // Navigate to the candy detail screen for this candy
      },
      child: Card(
        child: Column(
          children: [

            Expanded(
              child: Image(image: AssetImage(imagePath),
             ),
            ),
            Padding(
              padding:  EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name ,
                   style: TextStyle(
                  //fontWeight: FontWeight.bold,
                   fontSize: 16,
                   color: Colors.purpleAccent, // Change the color here
              ),
            ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (quantity > 0) {
                            quantity--;
                          }
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Text('$quantity'),
                      IconButton(
                        onPressed: () {

                          quantity++;
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
