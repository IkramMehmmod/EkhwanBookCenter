import 'package:ekhwan_book_center/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ekhwan_book_center/screens/address_screen.dart';
import 'package:ekhwan_book_center/data/books_data.dart';

List<Book> globalShoppingCart = [];

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int totalQuantity = 0;
  double totalPrice = 0.0;
  void showErrorMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    for (var book in globalShoppingCart) {
      totalQuantity += book.quantity;
      totalPrice += book.price * book.quantity;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Text('Selected Books:'),
              for (var book in globalShoppingCart)
                Text('${book.title} - Quantity: ${book.quantity}'),
              const SizedBox(height: 16),
              Text('Total Quantity: $totalQuantity'),
              const SizedBox(height: 16),
              Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (totalPrice != 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(
                          selectedBooks: globalShoppingCart,
                          totalQuantity: totalQuantity,
                          totalPrice: totalPrice,
                        ),
                      ),
                    );
                  } else {
                    showErrorMessage(
                      context,
                      'Please put some thing in the card first',
                    );
                    return;
                  }
                },
                child: const Text('Proceed to Payment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
