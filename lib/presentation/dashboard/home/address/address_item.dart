import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/dim.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: colorWhite, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shahas Nizar',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: colorBlack),
              ),
              height5,
              Text(
                'Example house,\nAlex street, Palarivattom\nKochi, Kerala, India',
                style: TextStyle(fontWeight: FontWeight.bold, color: colorGrey),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
