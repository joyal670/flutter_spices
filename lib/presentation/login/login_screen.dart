import 'package:flutter/material.dart';
import 'package:spices/presentation/otp/opt_screen.dart';

import '../../core/colors.dart';
import '../../core/dim.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: colorParisDaisy,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const OTPScreen();
          }));
        },
        child: const Icon(
          Icons.arrow_right_alt,
          color: colorBlack,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            height20,
            Center(
              child: Image.asset(
                'assets/images/notes.png',
                width: 70,
                height: 70,
              ),
            ),
            height20,
            const Text(
              'Welcome, \nLogin to continue',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
            height25,
            TextFormField(
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
            const Text(
              'We will send you a 4 digit OTP to this number',
              style: TextStyle(color: colorGrey),
            ),
            height25,
          ],
        ),
      )),
    );
  }
}
