import 'package:flutter/material.dart';

import 'package:lotus/utils/colors.dart';
import 'package:lotus/widgets/small_text.dart';

import '../utils/dimensions.dart';

class CardFooter extends StatelessWidget {
  final IconData icon;
  final String text;

  const CardFooter({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.thirdAccent,
          size: Dimensions.size20,
        ),
        SizedBox(
          width: Dimensions.width2,
        ),
        SmallText(
          text: text,
          color: AppColors.secondryAccent,
        )
      ],
    );
  }
}
