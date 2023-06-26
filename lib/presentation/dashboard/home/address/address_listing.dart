import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/dim.dart';
import '../cart/cart.dart';
import '../checkout/final_checkout.dart';
import 'address_item.dart';

class AddressListingScreen extends StatelessWidget {
  const AddressListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/checkbox.png',
                    width: 30,
                    height: 30,
                  ),
                  width10,
                  const Text(
                    'Billing Address is same as Shipping Address',
                    style: TextStyle(
                      color: colorGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
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
                        return const FinalCheckoutScreen();
                      }));
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text(
                      'Continue to checkout',
                      style: TextStyle(
                          color: colorWhite, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: colorBlack),
        backgroundColor: colorWildSand,
        title: const Text(
          'Delivery Address',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: colorWhite, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Deliver to:',
                        style: TextStyle(
                            color: colorGrey, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'CHANGE',
                          style: TextStyle(
                              color: colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  AddressItem()
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
