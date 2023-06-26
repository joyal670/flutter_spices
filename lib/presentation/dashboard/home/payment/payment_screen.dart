import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/dim.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: colorBlack),
        backgroundColor: colorWildSand,
        title: const Text(
          'Payment',
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
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: colorWhite, borderRadius: BorderRadius.circular(10)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Options:',
                    style: TextStyle(
                        color: colorBlack, fontWeight: FontWeight.bold),
                  ),
                  height5,
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.payment_outlined),
                        width10,
                        Text(
                          'Credit / Debit Card',
                          style: TextStyle(
                              color: colorBlack, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.attach_money),
                        width10,
                        Text(
                          'Cash On Delivery',
                          style: TextStyle(
                              color: colorBlack, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
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
