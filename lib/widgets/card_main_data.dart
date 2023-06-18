import 'package:flutter/material.dart';
import 'package:lotus/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'card_footer.dart';

class CardMainDate extends StatelessWidget {
  final String title;
  const CardMainDate({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: title),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.third,
                        size: Dimensions.size15,
                      )),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '1580'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardFooter(icon: Icons.circle_sharp, text: 'Normal'),
            CardFooter(icon: Icons.add_location, text: '1.7km'),
            CardFooter(icon: Icons.timer_outlined, text: '32min'),
          ],
        )
      ],
    );
  }
}
