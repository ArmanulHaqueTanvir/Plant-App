import 'package:flutter/material.dart';

import '../constant.dart';

class FeaturePlant extends StatelessWidget {
  const FeaturePlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            press: () {},
            number: 1,
          ),
          FeaturePlantCard(
            press: () {},
            number: 2,
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  final int number;
  final VoidCallback press;
  const FeaturePlantCard({
    super.key,
    required this.number,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bottom_img_$number.png"),
          ),
        ),
      ),
    );
  }
}
