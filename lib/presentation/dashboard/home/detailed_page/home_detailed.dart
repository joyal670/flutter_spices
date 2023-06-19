import 'package:flutter/material.dart';
import 'package:spices/core/dim.dart';

import '../../../../core/colors.dart';
import 'drop_down.dart';

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
                  'Cloves',
                  style: TextStyle(
                      color: colorBlack,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                height30,
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
                        borderRadius: BorderRadius.circular(10),
                        color: colorDairyCream),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
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
              ],
            ),
          )),
    );
  }
}
