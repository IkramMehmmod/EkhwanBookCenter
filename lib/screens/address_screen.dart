// address_screen.dart
import 'package:flutter/material.dart';
import 'package:ekhwan_book_center/screens/payment_screen.dart';
import 'package:ekhwan_book_center/data/books_data.dart';

class AddressScreen extends StatefulWidget {
  final List<Book> selectedBooks;
  final int totalQuantity;
  final double totalPrice;

  const AddressScreen({
    Key? key,
    required this.selectedBooks,
    required this.totalQuantity,
    required this.totalPrice,
  }) : super(key: key);

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();

  // Function to convert List<Book> to List<Map<String, dynamic>>
  List<Map<String, dynamic>> convertBooksToMapList(List<Book> books) {
    return books.map((book) {
      return {
        'title': book.title,
        'author': book.author,
        'quantity': book.quantity,
        // Add other properties as needed
      };
    }).toList();
  }

  // Function to show an error AlertDialog
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
                Navigator.of(context).pop(); // Close the dialog
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Delivery Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Enter your delivery address:'),
            const SizedBox(height: 8),
            TextFormField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: cityController,
              decoration: const InputDecoration(labelText: 'City'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: zipCodeController,
              decoration: const InputDecoration(labelText: 'Zip Code'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Validate the address fields
                if (addressController.text.isEmpty ||
                    cityController.text.isEmpty ||
                    zipCodeController.text.isEmpty) {
                  // Show an error message if any field is empty
                  showErrorMessage(
                    context,
                    'Please fill in all address fields.',
                  );
                  return;
                }

                // Convert selectedBooks to the required format
                List<Map<String, dynamic>> selectedBooksMap =
                    convertBooksToMapList(widget.selectedBooks);

                // Proceed to payment screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(
                      selectedBooks: selectedBooksMap,
                      totalQuantity: widget.totalQuantity,
                      totalPrice: widget.totalPrice,
                      street: addressController.text,
                      city: cityController.text,
                      zipCode: zipCodeController.text,
                    ),
                  ),
                );
              },
              child: const Text('Continue to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
