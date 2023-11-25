class Book {
  final String title;
  final String author;
  final String description;
  final double price;
  final String imagePath;
  int quantity;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  });
}

final List<Book> dummyBooks = [
  Book(
    title: 'Anatomy ',
    author: 'Lawernce E. Wineski',
    description: 'Best book for anatomy. Tenth  Edition',
    price: 350.0,
    imagePath: 'Assets/Images/Anatomy.jpeg',
  ),
  Book(
    title: 'Bio Chemestry',
    author: 'Wolters kluwer',
    description:
        'One of the best book for bio chemistry students. Eight Edition',
    price: 19.99,
    imagePath: 'Assets/Images/BioChemistry.jpeg',
  ),
  Book(
    title: 'Pharmacology',
    author: 'Karen Whalen',
    description:
        'One of the best book for bio chemistry students. Sixth Edition',
    price: 200.0,
    imagePath: 'Assets/Images/Pharmacy.jpeg',
  ),
  Book(
    title: 'Medical Physiology',
    author: 'K. Sembulingam',
    description:
        'One of the best book for bio chemistry students. Sixth Edition',
    price: 500.0,
    imagePath: 'Assets/Images/Physology.jpeg',
  ),
  Book(
    title: 'Anantomy by Regions',
    author: 'Lawrence E. Wineski',
    description:
        'One of the best book for bio chemistry students. Tenth Edition',
    price: 19.99,
    imagePath: 'Assets/Images/Anatomy 2.jpeg',
  ),
  Book(
    title: 'English-II',
    author: 'Nazir A.Chaudhary',
    description: 'for Course Code 1424, 5411, 9408',
    price: 19.99,
    imagePath: 'Assets/Images/iqbal.jpeg',
  ),
  Book(
    title: 'English-1',
    author: 'Nasir A. Chaudhary',
    description: 'Important book for communication skills for 4 years program',
    price: 350.0,
    imagePath: 'Assets/Images/iqbal 2.jpeg',
  ),
  // Add more dummy books as needed
];
