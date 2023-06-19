import 'package:flutter/material.dart';
import 'package:spices/presentation/dashboard/home/detailed_page/home_detailed.dart';

import '../../../core/colors.dart';
import '../../../core/dim.dart';

class GridItemOne extends StatelessWidget {
  const GridItemOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 20,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 1 / 1.5,
      children: List.generate(4, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const HomeDetailedScreen();
            }));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: colorDawnPink,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1686695324533-8bb24373ff47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 17,
                          backgroundColor: colorParisDaisy,
                          child: Text(
                            'NEW',
                            style: TextStyle(color: colorBlack, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )),
              height15,
              const Text(
                'Cloves / 100g',
                style: TextStyle(
                    color: colorBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
              height5,
              const Row(
                children: [
                  Text('\$8.99',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: colorGrey)),
                  width10,
                  Text('\$8.99',
                      style: TextStyle(
                          color: colorBlack, fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
