import 'package:flutter/material.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class MainCategoriesCard extends StatelessWidget {
  final String title;
  const MainCategoriesCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.mainCategorySectionHeight,
      decoration: BoxDecoration(
        color: AppColors.lightgrey,
      ),
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(Dimensions.height10),
        child: Text(
          title,
          maxLines: 2,
          softWrap: true,
        ),
      )),
    );
  }
}
