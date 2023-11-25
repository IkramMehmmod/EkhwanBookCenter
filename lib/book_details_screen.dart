// book_details_screen.dart
import 'package:ekhwan_book_center/screens/address_screen.dart';
import 'package:flutter/material.dart';
import 'package:ekhwan_book_center/data/books_data.dart';
import 'package:ekhwan_book_center/screens/shopping_card.dart';

class BookDetailsScreen extends StatefulWidget {
  final Book book;

  const BookDetailsScreen({Key? key, required this.book}) : super(key: key);

  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget.book.imagePath,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text('Author: ${widget.book.author}'),
            const SizedBox(height: 8),
            Text('Description: ${widget.book.description}'),
            const SizedBox(height: 8),
            Text('Price: \$${widget.book.price.toString()}'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) {
                        quantity--;
                        widget.book.quantity--;
                      }
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
                Text('Quantity: $quantity'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                      widget.book.quantity++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                globalShoppingCart.add(widget.book);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${widget.book.title} added to the cart'),
                  ),
                );
              },
              child: const Text('Add to Cart'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressScreen(
                          selectedBooks: globalShoppingCart,
                          totalQuantity: quantity,
                          totalPrice: quantity * widget.book.price),
                    ));
              },
              child: const Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
