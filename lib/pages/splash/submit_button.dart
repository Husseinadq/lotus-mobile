// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/user_controller.dart';

import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

import '../../routes/routes_helper.dart';

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
            String emailOrMobile =
                editTextControllers['emailOrMobile']!.value.text;
            String password = editTextControllers['password']!.value.text;

            print(emailOrMobile);
            print(password);
            Get.find<UserController>()
                .login(emailOrMobile, password)
                .then((value) {
              if (value) {
                print(value);
                Get.toNamed(RouteHelper.getMainPage());
              }
            });
          }
        } else {
          print("hessss");

          if (formKey.currentState!.validate()) {
            print("hessss");

// post to server
            String firstName = editTextControllers['firstName']!.value.text;
            String email = editTextControllers['email']!.value.text;
            String mobile = editTextControllers['mobile']!.value.text;
            String password = editTextControllers['password']!.value.text;

            print(email);
            print(password);
            print(firstName);
            print(mobile);
            Get.find<UserController>()
                .signUp(firstName, mobile, email, password)
                .then((value) {
              print(value);

              if (value) {
                print(value);
                Get.toNamed(RouteHelper.getMainPage());
              }
            });
          }
        }
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
