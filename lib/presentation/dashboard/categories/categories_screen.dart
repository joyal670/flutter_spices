import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';

final categoryList = [
  'Spices',
  'Dry Fruits',
  'Essential Oils',
  'Herbals',
];

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            height20,
            const Text(
              'Shop by Category:',
              style: TextStyle(
                color: colorMineShaft,
                fontWeight: FontWeight.bold,
              ),
            ),
            height15,
            Container(
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: ListView.separated(
                itemCount: categoryList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHwIS3lSZgxvn1Ys21pRvbHPfk1EFkR6WWVg&usqp=CAU',
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      categoryList[index],
                      style: const TextStyle(
                        color: colorMineShaft,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colorBlack,
                    ),
                  );
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
            )
          ],
        ),
      ),
    );
  }
}
