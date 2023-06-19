import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';
import 'package:spices/presentation/dashboard/home/caurosal_slider.dart';
import 'package:spices/presentation/dashboard/home/main_categories.dart';
import 'package:spices/presentation/dashboard/home/today_deal.dart';

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
                      color: colorDairyCream),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "01 : 06 : 58",
                      style: TextStyle(
                          color: colorBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
            height10,
            const GridItemOne(),
            height15,
            SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colorBlack)),
                child: const Text(
                  'View All',
                  style: TextStyle(color: colorGrey),
                ),
              ),
            ),
            height30,
            const Text(
              "Popular Items",
              style: TextStyle(
                  color: colorBlack, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            height10,
            const GridItemOne(),
            height30,
            const Text(
              "Recently Viewed",
              style: TextStyle(
                  color: colorBlack, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const HomeCategoryScreen(),
          ],
        ),
      ),
    );
  }
}
