import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '  Create Account',
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Rubik Medium',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'User Name',
                    fillColor: const Color(0xffFBF9FA),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.person,
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextButton(
                onPressed: () {
                  // start screen
                },
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  // padding: const EdgeInsets.all(18),
                  child: const Center(
                    child: Text(
                      'Sign Up',
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
