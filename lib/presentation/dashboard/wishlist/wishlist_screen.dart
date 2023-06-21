import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/presentation/dashboard/wishlist/wishlist_item.dart';

import '../../../core/dim.dart';

var items = [
  '10g',
  '50g',
  '100g',
];

String? _selectedDropDownValue;
int _counterValue = 1;

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) {
          return WishListItem();
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1,
            ),
          );
        },
      ),
    );
  }
}
