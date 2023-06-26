import 'package:flutter/material.dart';
import 'package:spices/presentation/dashboard/home/address/address_listing.dart';

import '../../../../core/colors.dart';
import '../../../../core/dim.dart';
import '../cart/cart.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

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
                      Navigator.of(context).pop();
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
          'Add Shipping Address',
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
        padding: EdgeInsets.all(12),
        children: [
          height15,
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                fillColor: colorWhite,
                filled: true,
                hintText: 'First Name',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
          height25,
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                fillColor: colorWhite,
                filled: true,
                hintText: 'Last Name',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
          height25,
          TextFormField(
            style: const TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
            maxLength: 6,
            decoration: const InputDecoration(
                fillColor: colorWhite,
                filled: true,
                hintText: 'Pincode',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            maxLines: 4,
            decoration: const InputDecoration(
                fillColor: colorWhite,
                filled: true,
                hintText: 'Address',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
          height25,
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                fillColor: colorWhite,
                filled: true,
                hintText: 'State',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
          height25,
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                fillColor: colorWhite,
                filled: true,
                hintText: 'District',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
