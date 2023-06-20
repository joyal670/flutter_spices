import 'package:flutter/material.dart';
import 'package:spices/core/colors.dart';
import 'package:spices/core/dim.dart';

class DotScreen extends StatelessWidget {
  const DotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(5, (index) => const dotWidget()),
    );
  }
}

class dotWidget extends StatelessWidget {
  const dotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: colorGrey),
          ),
          width15,
          const Text(
            'Calories:275',
            style: TextStyle(color: colorGrey, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
