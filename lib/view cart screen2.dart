import 'package:ecommerce_pro/side%20bar.dart';
import 'package:flutter/material.dart';

class ViewCartScreen extends StatelessWidget {
  const ViewCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CartItem> cartItems = [
      CartItem(name: 'Gummy Bears', quantity: 2, price: 2.99),
      CartItem(name: 'Sour Worms', quantity: 1, price: 4.99),
      CartItem(name: 'Chocolate Bar', quantity: 3, price: 1.99),
    ];

    final double totalPrice = cartItems.fold(
      0,
          (previousValue, cartItem) => previousValue + cartItem.totalPrice,
    ); //this code sums up the totalPrice of all items in the cartItems list and stores it in the totalPrice variable.

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
            );
            // What to do when the user taps the back button
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "My cart",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //to align the children to the start of the horizontal axis.
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder( //which displays the list of items in the shopping cart.
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final cartItem = cartItems[index];
                  return ListTile(
                    title: Text(cartItem.name),
                    subtitle: Text('${cartItem.quantity} x \$${cartItem.price}',
                      style: TextStyle(
                      color: Colors.purpleAccent,
                    ),
                  ),
                    trailing: Text('\$${cartItem.totalPrice}',
                      style: TextStyle(
                        color: Colors.purpleAccent,
                      ),
                    ),
                  //style: TextStyle(
                    //color: Colors.green,
                 // ),
                  );
                },
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                ),
                ),
                Text(
                  '\$${totalPrice}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirm Order'),
                        content: const Text('Are you sure you want to confirm this order?'),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                            },
                            child: const Text('Confirm'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan // Change background color here
                ),
                child: const Text('Confirm Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem {
  final String name;
  final int quantity;
  final double price;

  CartItem({
    required this.name,
    required this.quantity,
    required this.price,
  });

  double get totalPrice => quantity * price;
}

