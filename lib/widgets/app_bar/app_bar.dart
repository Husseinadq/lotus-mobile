import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../big_text.dart';
import '../../pages/search/search_widget.dart';
import '../small_text.dart';
import 'app_bar_search.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height50,
      width: Dimensions.screenWidth,
      margin:
          EdgeInsets.only(top: Dimensions.height25, bottom: Dimensions.height5),
      padding:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: BigText(
                text: 'Lotus',
                color: AppColors.secondry,
                size: Dimensions.font30,
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.secondry),
                      borderRadius: BorderRadius.circular(15)),
                  height: Dimensions.height45,
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 5,
                      ),
                      SmallText(text: 'whate are you looking for ?', size: 14),
                    ],
                  )),
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
