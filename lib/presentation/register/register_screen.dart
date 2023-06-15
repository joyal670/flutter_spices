import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';
import 'package:spices/presentation/login/login_screen.dart';
import 'package:spices/presentation/otp/opt_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: colorParisDaisy,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const LoginScreen();
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
              'Welcome, \nSign up to login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
            height25,
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'First Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
            height25,
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'Last Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
            height25,
            TextFormField(
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'Pincode',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              maxLines: 4,
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'Address',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
            height25,
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'State',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
            height25,
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  fillColor: colorMineShaft,
                  filled: true,
                  hintText: 'District',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            )
          ],
        ),
      )),
    );
  }
}
