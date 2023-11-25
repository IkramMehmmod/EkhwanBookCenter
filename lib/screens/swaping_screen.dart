import 'package:flutter/material.dart';
import 'package:ekhwan_book_center/screens/login_screen.dart';

class SwapingScreen extends StatelessWidget {
  const SwapingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
// Swiping in right direction.
        if (details.delta.dx > 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        }

// Swiping in left direction.
        if (details.delta.dx < 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(100), // Adjust the radius as needed
              child: const Image(
                height: 150,
                image: AssetImage('Assets/Images/Ekwan-Book-logo.jpg'),
                fit: BoxFit
                    .cover, // You can adjust the BoxFit property as needed
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Welcome To Ekhwan Book Center',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'We provide Quality of services',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 280,
            ),
            const Text(
              ' Get started',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
