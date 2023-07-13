import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotus/utils/colors.dart';

class ButtomSheetWidget extends StatelessWidget {
  const ButtomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 200,
      decoration: BoxDecoration(
          color: AppColors.primaryAccent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Column(),
    );
  }
}
