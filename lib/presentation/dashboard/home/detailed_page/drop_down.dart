import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  // Initial Selected Value
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String? _selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geeksforgeeks"),
      ),
      body: Center(
        child: DropdownButton(
            hint: const Text(
              'Select type',
              style: TextStyle(color: colorAmber),
            ),
            value: _selectedDropDownValue,
            items: items.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(color: Colors.red),
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
    );
  }
}
