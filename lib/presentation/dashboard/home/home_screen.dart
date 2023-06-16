import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';
import 'package:spices/presentation/dashboard/home/caurosal_slider.dart';
import 'package:spices/presentation/dashboard/home/main_categories.dart';

import 'caurosal_silder_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            height25,
            const Text(
              'Buy high quality',
              style: TextStyle(
                  color: colorBlack, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const Text(
              'spices online.',
              style: TextStyle(
                  color: colorBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
            height30,
            VerticalSlider(),
            height20,
            const Text(
              'Categories',
              style: TextStyle(
                  color: colorBlack, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const HomeCategoryScreen(),
            const VerticalSubSlider(),
            height20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today's Deal",
                  style: TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorParisDaisy),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "01 : 06 : 58",
                      style: TextStyle(
                          color: colorBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
