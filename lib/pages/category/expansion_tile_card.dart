import 'package:flutter/material.dart';
import 'package:lotus/pages/category/sub_categories_card.dart';
import 'package:lotus/utils/dimensions.dart';

class ExpansionTileCard extends StatelessWidget {
  final String title;
  const ExpansionTileCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      onExpansionChanged: (value) {},
      controlAffinity: ListTileControlAffinity.trailing,
      children: [
        SizedBox(
          height: Dimensions.expansionTileSection,
          width: double.maxFinite,
          child: GridView.count(
            crossAxisCount: 3,
            children: const [
              SubCategoriesCard(title: "gh", image: "assets/images/2.png"),
            ],
          ),
        ),
      ],
    );
  }
}
