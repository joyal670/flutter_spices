import 'package:flutter/material.dart';
import 'package:spices/presentation/dashboard/home/address/add_address.dart';
import 'package:spices/presentation/dashboard/home/address/address_item.dart';
import 'package:spices/presentation/dashboard/home/address/address_listing.dart';

import '../../../../core/colors.dart';
import '../../../../core/dim.dart';
import '../checkout/final_checkout.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

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
                        return const AddressListingScreen();
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'SELECT SHIPPING ADDRESS',
                    style: TextStyle(
                        color: colorGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const AddAddressScreen();
                      }));
                    },
                    child: const Text(
                      'ADD NEW',
                      style: TextStyle(
                          color: colorBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            height30,
            ListView.separated(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AddressItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                  );
                },
                itemCount: 2)
          ],
        ),
      ),
    );
  }
}
