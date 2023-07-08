// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton(
      {Key? key,
      required this.title,
      required this.formKey,
      required this.editTextControllers})
      : super(key: key);

  String title;
  Map<String, TextEditingController> editTextControllers;

  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if (title == 'Login') {
          if (formKey.currentState!.validate()) {
// post to server
            print(editTextControllers['email']!.value.text);
            print(editTextControllers['password']!.value.text);

            
          }
        } else {}
      }),
      child: Container(
        alignment: Alignment.center,
        height: Dimensions.height50,
        decoration: BoxDecoration(
          color: AppColors.secondry,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}
