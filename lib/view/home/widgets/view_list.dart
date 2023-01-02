import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/widgets/name_rating_column.dart';
import 'package:flutter/material.dart';

import 'package:dots_indicator/dots_indicator.dart';

class MyViewList extends StatefulWidget {
  const MyViewList({Key? key}) : super(key: key);

  @override
  State<MyViewList> createState() => _MyViewListState();
}

class _MyViewListState extends State<MyViewList> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  final double _scaleFactor = 0.8;
  var _currentPage = 0.0;
  final double _height = 150;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        SizedBox(
          height: 200,
          child: PageView.builder(
              itemCount: 5,
              controller: _pageController,
              itemBuilder: (context, index) => _buildPageItems(index)),
        ),
        // DotsIndicator
        DotsIndicator(
          dotsCount: 5,
          position: _currentPage,
          decorator: DotsDecorator(
            activeColor: mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItems(int index) {
    Matrix4 matrix = Matrix4.identity();
    var currentScale = 1 - (1 - _scaleFactor) * (index - _currentPage).abs();
    var transform = _height * (1 - currentScale);
    matrix = Matrix4.diagonal3Values(1, currentScale, 1)
      ..setTranslationRaw(0, transform, 0);
    return GestureDetector(
      child: Transform(
        transform: matrix,
        child: Stack(
          children: [
            Container(
              height: _height,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0xFF332d2b),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:
                      Image.asset("assets/images/nike.png", fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 75,
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const NameRatingColumn(text: "Shoes"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
