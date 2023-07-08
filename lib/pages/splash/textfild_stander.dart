import 'package:flutter/material.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class TextfildStander extends StatelessWidget {
  TextfildStander(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.textInputType,
      required this.isObscure});
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height50,
      padding: EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.secondry)),
      child: Center(
        child: TextFormField(
          controller: textEditingController,
          validator: ((value) {
            if (value == null || value.isEmpty) {
              return "The " + hintText + "is required";
            }
            return null;
          }),
          keyboardType: textInputType,
          obscureText: isObscure,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            // contentPadding: EdgeInsets.all(5),
            hintStyle: TextStyle(height: 1),
          ),
        ),
      ),
    );
  }
}
