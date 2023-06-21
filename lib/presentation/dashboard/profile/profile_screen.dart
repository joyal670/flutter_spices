import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/dim.dart';

final categoryList = [
  'Orders',
  'Wishlist',
];

final categoryList2 = [
  'Profile Details',
  'Settings',
  'Address',
  'Refer & Earn'
];

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Orders:',
                    style: TextStyle(
                        color: colorMineShaft,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  height5,
                  const Divider(
                    thickness: 1,
                  ),
                  ListView.separated(
                    itemCount: categoryList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        leading: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHwIS3lSZgxvn1Ys21pRvbHPfk1EFkR6WWVg&usqp=CAU',
                          height: 30,
                          width: 30,
                        ),
                        title: Text(
                          categoryList[index],
                          style: const TextStyle(
                            color: colorMineShaft,
                            fontWeight: FontWeight.w500,
                          ),
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
                  )
                ],
              ),
            ),
            height20,
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Profile:',
                    style: TextStyle(
                        color: colorMineShaft,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  height5,
                  const Divider(
                    thickness: 1,
                  ),
                  ListView.separated(
                    itemCount: categoryList2.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        leading: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHwIS3lSZgxvn1Ys21pRvbHPfk1EFkR6WWVg&usqp=CAU',
                          height: 30,
                          width: 30,
                        ),
                        title: Text(
                          categoryList2[index],
                          style: const TextStyle(
                            color: colorMineShaft,
                            fontWeight: FontWeight.w500,
                          ),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
