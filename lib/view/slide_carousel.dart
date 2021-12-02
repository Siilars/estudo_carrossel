import 'package:estudo_carrossel/view/slide_tiles.dart';
import 'package:flutter/material.dart';

class SlideCarousel extends StatelessWidget {
  final int currentPage;
  final PageController pageController;
  final List<String> listImages;

  const SlideCarousel({Key? key, required this.currentPage, required this.pageController, required this.listImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: listImages.length,
      itemBuilder: (_, index) {
        return SlideTile(
          activePage: currentPage == index,
          image: listImages[index],
        );
      },
    );
  }
}
