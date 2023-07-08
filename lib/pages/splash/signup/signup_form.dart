import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotus/pages/splash/submit_button.dart';
import 'package:lotus/pages/splash/textfild_stander.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController firstNameEditingController =
      TextEditingController();
  final TextEditingController mobileEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  Map<String, TextEditingController> _editTextControllers = {};
  bool isRegistered = true;
  bool isUsePhoneNumber = true;
  // List<String> mode = ['phone number', 'email'];
  @override
  void dispose() {
    firstNameEditingController.dispose();
    mobileEditingController.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            ///start first name input
            TextfildStander(
                textEditingController: firstNameEditingController,
                hintText: 'First Name',
                textInputType: TextInputType.text,
                isObscure: false),
            SizedBox(
              height: 10,
            ),

            ///start phone & email input
            TextfildStander(
                textEditingController: mobileEditingController,
                hintText: 'Phone Number',
                textInputType: TextInputType.phone,
                isObscure: false),
            SizedBox(
              height: 10,
            ),
            TextfildStander(
                textEditingController: emailEditingController,
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
                isObscure: false),

            ///end phone input

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     GestureDetector(
            //       onTap: (() {
            //         if (isUsePhoneNumber) {
            //           setState(() {
            //             isUsePhoneNumber = false;
            //           });
            //         } else {
            //           setState(() {
            //             isUsePhoneNumber = true;
            //           });
            //         }
            //       }),
            //       child: Row(
            //         children: [
            //           Text(
            //             "sign up using",
            //             style:
            //                 TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            //           ),
            //           Text(
            //             isUsePhoneNumber ? " email" : " phone number",
            //             style:
            //                 TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),

            SizedBox(
              height: 10,
            ),

            ///start password input
            TextfildStander(
              textEditingController: passwordEditingController,
              hintText: 'Password',
              textInputType: TextInputType.text,
              isObscure: true,
            ),

            ///end phone input
            SizedBox(
              height: 20,
            ),

            SubmitButton(
              title: 'Sign Up',
              formKey: _formKey,
              editTextControllers: _editTextControllers = {
                "firstName": firstNameEditingController,
                "email": emailEditingController,
                "mobile": mobileEditingController,
                "password": passwordEditingController,
              },
            )
          ],
        ),
      ),
    );
  }
}
