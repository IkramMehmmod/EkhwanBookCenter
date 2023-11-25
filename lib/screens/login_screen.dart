import 'package:ekhwan_book_center/screens/forget_password.dart';
import 'package:ekhwan_book_center/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ekhwan_book_center/screens/sign_up_screen.dart';
/*
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.8);

    final firstControlPoint = Offset(size.width / 4, size.height);
    final firstEndPoint = Offset(size.width / 2.25, size.height * 0.8);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    final secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height * 0.6);
    final secondEndPoint = Offset(size.width, size.height * 0.8);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}*/

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(100), // Adjust the radius as needed
            child: const Image(
              height: 150,
              image: AssetImage('Assets/Images/Ekwan-Book-logo.jpg'),
              fit: BoxFit.cover, // You can adjust the BoxFit property as needed
            ),
          ),
          Container(
            color: null, // Adjust the color as needed
            height: 0, // Adjust the height of the wave effect
            child: const Center(
              child: Text(
                'Welcome To Ekhwan Book Center',
                style: TextStyle(
                    color: Colors.white, // Adjust the text color as needed
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'abc@gmail.com',
                  fillColor: const Color(0xffFBF9FA),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                    color: Color(0xff323F48),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: const Color(0xffFBF9FA),
                filled: true,
                prefixIcon: const Icon(
                  Icons.lock,
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
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPassword(),
                        ));
                  },
                  child: const Text(
                    'Forget password',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                  )),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                // padding: const EdgeInsets.all(18),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontFamily: 'Rubik medium',
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'OR',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextButton(
              onPressed: () {
                //start screen
              },
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 4, 64, 95),
                ),
                // padding: const EdgeInsets.all(18),
                child: const Center(
                  child: Text(
                    'Facebook Login',
                    style: TextStyle(
                        fontFamily: 'Rubik medium',
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account yet?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: const Text('Sign Up'))
            ],
          )
        ],
      ),
    );
  }
}
