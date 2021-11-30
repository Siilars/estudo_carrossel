import 'package:flutter/material.dart';

class BulletBrabo extends StatelessWidget {
  final int listLength;
  final int currentPage;
  const BulletBrabo({Key? key, required this.listLength, required this.currentPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(listLength, (index) {
          return Container(
            margin: EdgeInsets.only(right: 20),
            height: 50,
            width: 50,
            color: currentPage == index ? Colors.red : Colors.grey,
          );
        })
      ],
    );
  }
}
