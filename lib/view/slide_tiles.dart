import 'package:flutter/material.dart';

class SlideTile extends StatefulWidget {
  final String image;
  final bool activePage;

  const SlideTile({Key? key, required this.image, required this.activePage}) : super(key: key);

  @override
  _SlideTileState createState() => _SlideTileState();
}

class _SlideTileState extends State<SlideTile> {
  @override
  Widget build(BuildContext context) {
    final double blur = this.widget.activePage ? 20 : 0;
    final double top = this.widget.activePage ? 30 : 100;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.fromLTRB(10, top, 10, 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            blurRadius: blur,
          )
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(widget.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
