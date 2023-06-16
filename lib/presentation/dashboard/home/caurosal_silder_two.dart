import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

final imageUrl = [
  'https://images.unsplash.com/photo-1512386233331-f023884a92e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1573847792062-9292df56ebb4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1439694458393-78ecf14da7f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
];

class VerticalSubSlider extends StatefulWidget {
  const VerticalSubSlider({super.key});

  @override
  State<VerticalSubSlider> createState() => _VerticalSubSliderState();
}

class _VerticalSubSliderState extends State<VerticalSubSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FlutterCarousel(
            options: CarouselOptions(
              height: 120.0,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              controller: CarouselController(),
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: true,
              pauseAutoPlayInFiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              disableCenter: false,
              showIndicator: false,
              slideIndicator: CircularSlideIndicator(),
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageUrl
                .map((item) => SubSliderItem(
                      image: item,
                    ))
                .toList(),
          ),
        ),
        height10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrl.map((url) {
            int index = imageUrl.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? colorBlack : colorGrey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class SubSliderItem extends StatelessWidget {
  const SubSliderItem({
    super.key,
    this.image,
  });

  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
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
                      image,
                    ),
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: colorParisDaisy,
                child: Center(
                  child: Text(
                    '25%',
                    style: TextStyle(color: colorBlack, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          width15,
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fenugreek seeds / 100g',
                style: TextStyle(
                  color: colorBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
              width15,
              Row(
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
          )
        ],
      ),
    );
  }
}
