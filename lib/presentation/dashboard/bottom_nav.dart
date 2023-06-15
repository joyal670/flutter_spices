import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';

ValueNotifier<int> bottomNavigationIndex = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNavigationIndex,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          elevation: 10,
          currentIndex: newIndex,
          onTap: (index) {
            bottomNavigationIndex.value = index;
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colorBlack,
          unselectedItemColor: colorGrey,
          selectedIconTheme: const IconThemeData(color: colorBlack),
          unselectedIconTheme: const IconThemeData(color: colorGrey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        );
      },
    );
  }
}
