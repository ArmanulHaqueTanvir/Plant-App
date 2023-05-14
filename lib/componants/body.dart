import 'package:flutter/material.dart';
import 'package:plant_app/componants/recommanded_plants.dart';
import 'package:plant_app/componants/title_with_btn.dart';
import 'package:plant_app/constant.dart';
import 'feature_plant_card.dart';
import 'header_with_search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithBtn(title: "Recommended", press: () {}),
          const RecommedPlants(), // this is the recommanded card

          // features plant start here....

          TitleWithBtn(title: "Featured Plants", press: () {}),
          const FeaturePlant(), // this is the feature card
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
