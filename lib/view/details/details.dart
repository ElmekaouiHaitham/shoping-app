import 'package:ecommerce/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/name_rating_column.dart';
import '../../widgets/roundedIcon.dart';
import '../../widgets/texts/big_text.dart';
import '../../widgets/texts/expandableText.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // to show the image
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: (350),
                decoration: const BoxDecoration(
                  color: Color(0xFF69c5df),
                  image: DecorationImage(
                    image: AssetImage("assets/images/nike.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // to show the icons
            Positioned(
              top: (13),
              right: (16),
              left: (16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      // Get.to(() => MainFood());
                    },
                    child: const RoundedIcon(
                      icon: Icons.arrow_back_ios,
                    ),
                  ),
                  const RoundedIcon(
                    icon: Icons.favorite,
                  ),
                ],
              ),
            ),
            // to show the text section
            Positioned(
              right: 0,
              left: 0,
              top: (340),
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.only(left: (20), right: (20), top: (20)),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((20)),
                    topRight: Radius.circular((20)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    NameRatingColumn(text: "100"),
                    SizedBox(height: (20)),
                    BigText(text: "Introduce"),
                    SizedBox(height: (10)),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableText(
                            text:
                                "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: (80),
          padding: const EdgeInsets.only(
            top: (10),
            left: (20),
            right: (20),
            bottom: (10),
          ),
          decoration: const BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular((40)),
              topRight: Radius.circular((40)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RoundedIcon(
                bg_color: Colors.red,
                icon: Icons.favorite,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                    top: (20),
                    bottom: (20),
                    left: (15),
                    right: (15),
                  ),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular((20)),
                  ),
                  child: const BigText(
                    text: "\$ 100 Add to cart",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
