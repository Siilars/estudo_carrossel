import 'package:estudo_carrossel/bullet_row.dart';
import 'package:estudo_carrossel/slide_carousel.dart';
import 'package:estudo_carrossel/slide_list.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SlideList slideList = SlideList();

  PageController pageController = PageController(viewportFraction: 0.8);

  int currentPage = 0;
  @override
  void initState() {
    pageController.addListener(() {
      int next = pageController.page!.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Carousel"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: SlideCarousel(
              listImages: slideList.carouselImages,
              pageController: pageController,
              currentPage: currentPage,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          BulletRow(
            currentPage: currentPage,
            listLength: slideList.carouselImages.length,
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
