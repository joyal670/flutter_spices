import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/dim.dart';

var items = [
  '10g',
  '50g',
  '100g',
];

String? _selectedDropDownValue;
int _counterValue = 1;

class WishListItem extends StatefulWidget {
  const WishListItem({super.key});

  @override
  State<WishListItem> createState() => _WishListItemState();
}

class _WishListItemState extends State<WishListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(vertical: 3),
      onTap: () {},
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  color: colorDawnPink,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1686695324533-8bb24373ff47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    ),
                  ),
                ),
              )),
          width10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cloves / 100g - Rs. 155',
                style: TextStyle(
                  color: colorMineShaft,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height10,
              const Text('\$8.99',
                  style: TextStyle(
                      fontSize: 25,
                      color: colorBlack,
                      fontWeight: FontWeight.bold)),
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton(
                        underline: const SizedBox(),
                        hint: Text(
                          items[0],
                          style: const TextStyle(color: colorBlack),
                        ),
                        value: _selectedDropDownValue,
                        items: items.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(color: colorBlack),
                            ),
                            onTap: () {},
                          );
                        }).toList(),
                        onChanged: (selectedValue) {
                          setState(() {
                            _selectedDropDownValue = selectedValue;
                          });
                        }),
                  ),
                  width15,
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(color: colorDawnPink),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                _counterValue--;
                                if (_counterValue <= 1) {
                                  _counterValue = 1;
                                }
                              });
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(
                                  color: colorBlack,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(color: colorWhite),
                        child: Center(
                          child: Text(
                            _counterValue.toString(),
                            style: const TextStyle(
                                color: colorBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(color: colorDawnPink),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                _counterValue++;
                              });
                            },
                            child: const Text(
                              '+',
                              style: TextStyle(
                                  color: colorBlack,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              height20,
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Move to Bag',
                      style: TextStyle(
                          color: colorMineShaft, fontWeight: FontWeight.bold),
                    ),
                  ),
                  width20,
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Remove',
                      style: TextStyle(
                          color: colorMineShaft, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
