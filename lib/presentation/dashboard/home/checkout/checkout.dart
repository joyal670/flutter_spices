import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:spices/presentation/dashboard/home/cart/cart.dart';

import '../../../../core/dim.dart';
import '../../wishlist/wishlist_item.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 70,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(color: colorWhite),
          child: SizedBox(
            height: 50,
            child: ElevatedButton.icon(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colorBlack)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const MyCartScreen();
                  }));
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text(
                  'Continue to checkout',
                  style:
                      TextStyle(color: colorWhite, fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: colorBlack),
        backgroundColor: colorWildSand,
        title: const Text(
          'Cart (3 Items)',
          style: TextStyle(color: colorBlack, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Center(
            child: Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: colorBlack,
                ),
                width15,
              ],
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          height10,
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  Row(
                    children: [
                      Icon(
                        Icons.percent_rounded,
                        color: colorBlack,
                      ),
                      Text(
                        'Availabe Offers',
                        style: TextStyle(
                            color: colorBlack, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  height10,
                  ReadMoreText(
                    'Min 10% Off on spices on  min purchase of Rs. 1500. \nApply coupon code MN10.Min 10% Off on spices on  min purchase of Rs. 1500. \nApply coupon code MN10',
                    style: TextStyle(
                        color: colorGrey, fontWeight: FontWeight.bold),
                    numLines: 2,
                    readMoreText: 'See more',
                    readLessText: 'See less',
                    readMoreAlign: Alignment.bottomLeft,
                    readMoreTextStyle: TextStyle(
                        color: colorBlack, fontWeight: FontWeight.bold),
                    readMoreIconColor: colorBlack,
                  )
                ],
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  const Row(
                    children: [
                      Icon(
                        Icons.percent_rounded,
                        color: colorBlack,
                      ),
                      Text(
                        'Offeres & Coupons',
                        style: TextStyle(
                          color: colorBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  height10,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorDawnPink,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apply coupon code',
                            style: TextStyle(
                                color: colorBlack,
                                fontWeight: FontWeight.normal),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: colorBlack,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  const Row(
                    children: [
                      Icon(
                        Icons.percent_rounded,
                        color: colorBlack,
                      ),
                      Text(
                        'Price Details',
                        style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  height15,
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total MRP',
                            style: TextStyle(color: colorBlack),
                          ),
                          Text(
                            '\$1774',
                            style: TextStyle(color: colorBlack),
                          )
                        ],
                      ),
                      height10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Coupon Discount',
                            style: TextStyle(color: colorBlack),
                          ),
                          Text(
                            '-\$936',
                            style: TextStyle(color: colorGreen),
                          )
                        ],
                      ),
                      height10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Fee',
                            style: TextStyle(color: colorBlack),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$40',
                                style: TextStyle(
                                  color: colorBlack,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              width10,
                              Text(
                                'FREE',
                                style: TextStyle(color: colorGreen),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  height10,
                  const Divider(
                    thickness: 1,
                  ),
                  height10,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        '\$1274',
                        style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  height15,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorDawnPink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/truck.jpg',
                            height: 30,
                            width: 30,
                          ),
                          width10,
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: 'Yay!',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: ' No Delivery Fee ',
                                  style: TextStyle(
                                      color: colorGreen,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: ' \$40 ',
                                  style: TextStyle(
                                      color: colorBlack,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough)),
                              TextSpan(
                                  text: ' on this order',
                                  style: TextStyle(color: colorBlack)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
