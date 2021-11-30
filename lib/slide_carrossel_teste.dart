import 'package:estudo_carrossel/bullet_teste.dart';
import 'package:estudo_carrossel/slide_list.dart';
import 'package:flutter/material.dart';

class SlideCarrossel2 extends StatefulWidget {
  const SlideCarrossel2({Key? key}) : super(key: key);

  @override
  _SlideCarrossel2State createState() => _SlideCarrossel2State();
}

class _SlideCarrossel2State extends State<SlideCarrossel2> {
  SlideList slideList = SlideList();
  PageController pageController = PageController(viewportFraction: 0.8);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrossel dois'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              controller: pageController,
              itemCount: slideList.carouselImages.length,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.all(currentPage == index ? 30 : 100),
                  child: Image.asset(
                    slideList.carouselImages[index],
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitHeight,
                  ),
                );
              },
            ),
          ),
          BulletBrabo(listLength: slideList.carouselImages.length, currentPage: currentPage)
        ],
      ),
    );
  }
}
