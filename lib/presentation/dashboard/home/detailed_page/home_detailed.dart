import 'package:flutter/material.dart';
import 'package:spices/core/dim.dart';
import 'package:spices/presentation/dashboard/home/detailed_page/dot_screen.dart';

import '../../../../core/colors.dart';
import '../main_categories.dart';

class HomeDetailedScreen extends StatelessWidget {
  const HomeDetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CollapsingToolbar();
  }
}

class CollapsingToolbar extends StatefulWidget {
  const CollapsingToolbar({super.key});

  @override
  State<CollapsingToolbar> createState() => _CollapsingToolbarState();
}

class _CollapsingToolbarState extends State<CollapsingToolbar> {
  var items = [
    '10g',
    '50g',
    '100g',
  ];

  String? _selectedDropDownValue;
  int _counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWildSand,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 70,
        child: Container(
          decoration: const BoxDecoration(color: colorWhite),
          child: Row(
            children: [
              width10,
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: colorDawnPink,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.favorite_outline,
                        color: colorBlack,
                      )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton.icon(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(colorBlack)),
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_bag_outlined),
                        label: const Text(
                          'Add to Bag',
                          style: TextStyle(
                              color: colorWhite, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: colorWildSand,
                automaticallyImplyLeading: true,
                iconTheme: const IconThemeData(color: colorBlack),
                leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context, false)),
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  background: Image.network(
                    "https://images.unsplash.com/photo-1439694458393-78ecf14da7f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGJhY2tncm91bmQlMjBpbWFnZXxlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                  ),
                ),
                actions: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: colorWhite),
                    child: const Icon(
                      Icons.favorite_border,
                      color: colorBlack,
                    ),
                  ),
                  width10,
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: colorWhite),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: colorBlack,
                    ),
                  ),
                  width15
                ],
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                const Text(
                  'Cloves / 100g -RS.155',
                  style: TextStyle(
                      color: colorBlack,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                height15,
                Wrap(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: colorDairyCream),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Row(
                        children: [
                          Icon(Icons.bubble_chart),
                          width10,
                          Text(
                            "You save 40 on this order",
                            style: TextStyle(
                                color: colorBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
                height15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Weight:',
                          style: TextStyle(
                              color: colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        width10,
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Qty:',
                          style: TextStyle(
                              color: colorBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        width10,
                        Container(
                          height: 50,
                          width: 50,
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
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(color: colorWhite),
                          child: Center(
                            child: Text(
                              _counterValue.toString(),
                              style: const TextStyle(
                                  color: colorBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
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
                Wrap(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: colorDairyCream),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Text(
                        "Special Price",
                        style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ]),
                height15,
                Row(
                  children: [
                    const Text('\$8.99',
                        style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.lineThrough,
                            color: colorGrey)),
                    width10,
                    const Text('\$8.99',
                        style: TextStyle(
                            fontSize: 25,
                            color: colorBlack,
                            fontWeight: FontWeight.bold)),
                    width15,
                    Wrap(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: colorDairyCream),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Text(
                            "25% Off",
                            style: TextStyle(
                                color: colorBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                height15,
                const Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters point here.',
                  style: TextStyle(color: colorMineShaft),
                ),
                height25,
                const Text(
                  'Nutritional Facts',
                  style: TextStyle(
                      color: colorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                height10,
                const DotScreen(),
                height25,
                const Text(
                  'Benefits',
                  style: TextStyle(
                      color: colorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                height10,
                const DotScreen(),
                height15,
                DotWidgets(),
                height25,
                const Text(
                  'Releated products',
                  style: TextStyle(
                      color: colorBlack,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const HomeCategoryScreen(),
              ],
            ),
          )),
    );
  }

  SizedBox DotWidgets() {
    return SizedBox(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLPUpmIyvjxxjAFeAglMmfvuBR44vmY4xAQA&usqp=CAU',
                  width: 70,
                  height: 70,
                ),
                const Text(
                  '100% Organic',
                  style: TextStyle(
                      color: colorOrange, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 50,
              child: VerticalDivider(
                color: colorGrey,
                thickness: 1.5,
              ),
            ),
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkD1Flrx227ipM_gPa9cGlFPZ-F-KLZlioww&usqp=CAU',
                  width: 70,
                  height: 70,
                ),
                const Text(
                  'Quality checked',
                  style: TextStyle(
                      color: colorOrange, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
