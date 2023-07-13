import 'package:flutter/material.dart';

import 'package:lotus/utils/colors.dart';

class TextBannerWidget extends StatelessWidget {
  String? title;
  TextBannerWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.maxFinite,
      color: AppColors.secondry,
      height: 80,
      child: Text(
        title!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColors.primary),
      ),
    );
  }
}
