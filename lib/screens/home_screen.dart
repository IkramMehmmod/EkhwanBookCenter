// home_screen.dart
import 'package:flutter/material.dart';
import 'package:ekhwan_book_center/book_details_screen.dart';
import 'package:ekhwan_book_center/data/books_data.dart';
import 'package:ekhwan_book_center/screens/shopping_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Book> displayedBooks = List.from(dummyBooks);
  List<Book> searchResults = List.from(dummyBooks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoppingCartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 28, bottom: 28, left: 15, right: 15),
            child: TextField(
              onChanged: (value) {
                updateSearchResults(value);
              },
              decoration: InputDecoration(
                hintText: 'Search for a book ...',
                fillColor: const Color(0xffFBF9FA),
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff323F48),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: (searchResults.length / 2).ceil(),
              itemBuilder: (context, rowIndex) {
                int startIndex = rowIndex * 2;
                int endIndex = (rowIndex + 1) * 2;
                if (endIndex > searchResults.length) {
                  endIndex = searchResults.length;
                }

                List<Book> currentRow =
                    searchResults.sublist(startIndex, endIndex);

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: currentRow.map((book) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDetailsScreen(book: book),
                          ),
                        );
                      },
                      child: Card(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  book.imagePath,
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        book.title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        book.author,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void updateSearchResults(String query) {
    setState(() {
      searchResults = dummyBooks
          .where(
            (book) => book.title.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    });
  }
}
