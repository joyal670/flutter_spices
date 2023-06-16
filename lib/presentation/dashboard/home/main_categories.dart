import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';

final imageList = [
  'https://images.unsplash.com/photo-1686695324533-8bb24373ff47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1661956600655-e772b2b97db4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw0NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1686562919000-812eecd59aa4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1596591606975-97ee5cef3a1e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZydWl0c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
];

final nameList = [
  'Spices',
  'Dry Fruits',
  'Oils',
  'Herbs',
];

class HomeCategoryScreen extends StatelessWidget {
  const HomeCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(
            imageList.length,
            (index) => CircleWidget(
                  index: index,
                )),
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final index;
  const CircleWidget({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          height20,
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: colorWhite),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      imageList[index].toString(),
                    ),
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 12,
                backgroundColor: colorParisDaisy,
                child: Text(
                  'NEW',
                  style: TextStyle(color: colorBlack, fontSize: 10),
                ),
              )
            ],
          ),
          height10,
          Text(
            nameList[index],
            style:
                const TextStyle(color: colorGrey, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
