import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../big_text.dart';
import '../search_widget.dart';
import '../small_text.dart';
import 'app_bar_search.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth,
      margin:
          EdgeInsets.only(top: Dimensions.height25, bottom: Dimensions.height5),
      padding:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                  height: Dimensions.height45,
                  width: double.maxFinite,
                  child: SearchWidget()),
            ),
            Container(
              child: BigText(
                text: 'WOW',
                color: AppColors.thirdAccent,
                size: Dimensions.font30,
              ),
            ),
            // Center(
            //   child: Container(
            //     width: Dimensions.width45,
            //     height: Dimensions.height45,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(15),
            //         color: AppColors.third),
            //     child: Icon(
            //       Icons.search,
            //       color: AppColors.primary,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
