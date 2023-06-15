import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';
import 'package:spices/presentation/dashboard/categories/categories_screen.dart';
import 'package:spices/presentation/dashboard/home/home_screen.dart';
import 'package:spices/presentation/dashboard/profile/profile_screen.dart';
import 'package:spices/presentation/dashboard/wishlist/wishlist_screen.dart';

import 'bottom_nav.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final _pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const WishListScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorWildSand,
        title: Image.asset(
          'assets/images/menu.png',
          height: 35,
          width: 35,
        ),
        actions: const [
          Center(
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: colorBlack,
                ),
                width15,
                Icon(
                  Icons.local_mall,
                  color: colorBlack,
                ),
                width15
              ],
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: bottomNavigationIndex,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: colorGrey,
              blurRadius: 10,
            ),
          ],
        ),
        child: const BottomNavigationWidget(),
      ),
    );
  }
}
