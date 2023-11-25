import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
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
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 80),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your email',
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
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextButton(
                onPressed: () {},
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
                      'Forget Password',
                      style: TextStyle(
                          fontFamily: 'Rubik medium',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
