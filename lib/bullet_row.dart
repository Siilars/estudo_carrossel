import 'package:flutter/material.dart';

class BulletRow extends StatelessWidget {
  final int currentPage;
  final int listLength;
  const BulletRow({Key? key, required this.currentPage, required this.listLength}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          listLength,
          (index) {
            return GestureDetector(
              onTap: () {},
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                margin: EdgeInsets.only(left: 15, right: 15),
                width: currentPage == index ? 15 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color: currentPage == index ? Colors.red : Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ],
    );
  }
}
