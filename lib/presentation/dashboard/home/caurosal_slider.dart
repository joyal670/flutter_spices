import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

final imageUrl = [
  'https://images.unsplash.com/photo-1512386233331-f023884a92e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1573847792062-9292df56ebb4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1439694458393-78ecf14da7f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
];

class VerticalSlider extends StatefulWidget {
  @override
  _VerticalSliderState createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FlutterCarousel(
            options: CarouselOptions(
              height: 150.0,
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
                .map((item) => Container(
                      //  color: Colors.accents[_current % Colors.accents.length],

                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(item), fit: BoxFit.cover),
                      ),
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
