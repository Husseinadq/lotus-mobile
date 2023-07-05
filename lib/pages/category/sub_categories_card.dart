
import 'package:flutter/material.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class SubCategoriesCard extends StatelessWidget {
  final String title;
  final String image;
 const SubCategoriesCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(Dimensions.radius20)),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height5),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(Dimensions.radius20)),
                width: double.maxFinite,
                child: Center(child: Image.asset(image, fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height5),
                child: Text(
                  title,
                  maxLines: 2,
                  softWrap: false,
                  style: TextStyle(fontSize: Dimensions.font13),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
