// payment_screen.dart
import 'package:flutter/material.dart';
import 'success_screen.dart';

class PaymentScreen extends StatelessWidget {
  final List<Map<String, dynamic>> selectedBooks;
  final int totalQuantity;
  final double totalPrice;
  final String street;
  final String city;
  final String zipCode;

  const PaymentScreen({
    Key? key,
    required this.selectedBooks,
    required this.totalQuantity,
    required this.totalPrice,
    required this.street,
    required this.city,
    required this.zipCode,
  }) : super(key: key);

  // Function to clear the shopping cart
  void clearShoppingCart() {
    // Implement logic to clear the shopping cart (if needed)
    // This is a placeholder and should be implemented based on your application's architecture
  }

  // Function to update the user's purchase history
  void updatePurchaseHistory() {
    // Implement logic to update purchase history (e.g., make an API call)
    // This is a placeholder and should be implemented based on your application's architecture
  }

  // Function to show a confirmation SnackBar
  void showConfirmationSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Payment Successful!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Payment Methods'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Selected Books:'),
            for (var book in selectedBooks)
              Text('${book['title']} - Quantity: ${book['quantity']}'),
            const SizedBox(height: 16),
            Text('Total Quantity: $totalQuantity'),
            const SizedBox(height: 16),
            Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
            const SizedBox(height: 16),
            const Text('Delivery Address:'),
            Text('Street: $street'),
            Text('City: $city'),
            Text('Zip Code: $zipCode'),
            const SizedBox(height: 16),
            const Text('Select Payment Method:'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Perform payment logic based on the selected payment method

                // After successful payment, you might want to clear the shopping cart
                clearShoppingCart();

                // You can also update the user's purchase history or perform other actions
                updatePurchaseHistory();

                // Display a confirmation message
                showConfirmationSnackBar(context);

                // Navigate to a success page or any other relevant action
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuccessScreen(),
                  ),
                );
              },
              child: const Text('EasyPaisa'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Implement PayPal payment logic
              },
              child: const Text('PayPal'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Implement Visa Card payment logic
              },
              child: const Text('Visa Card'),
            ),
          ],
        ),
      ),
    );
  }
}
