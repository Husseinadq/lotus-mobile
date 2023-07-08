import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotus/pages/splash/submit_button.dart';
import 'package:lotus/pages/splash/textfild_stander.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();

  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController phoneEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  bool isRegistered = true;
  bool isUsePhoneNumber = true;
  // List<String> mode = ['phone number', 'email'];
  Map<String, TextEditingController> _editTextControllers = {};

  @override
  void dispose() {
    phoneEditingController.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            ///start phone input
            isUsePhoneNumber
                ? TextfildStander(
                    textEditingController: phoneEditingController,
                    hintText: 'Phone Number',
                    textInputType: TextInputType.phone,
                    isObscure: false)
                : TextfildStander(
                    textEditingController: emailEditingController,
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                    isObscure: false),

            ///end phone input
            SizedBox(
              height: 10,
            ),

            ///start phone input
            TextfildStander(
                textEditingController: passwordEditingController,
                hintText: 'password',
                textInputType: TextInputType.text,
                isObscure: true),

            ///end phone input
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (() {
                    if (isUsePhoneNumber) {
                      setState(() {
                        isUsePhoneNumber = false;
                      });
                    } else {
                      setState(() {
                        isUsePhoneNumber = true;
                      });
                    }
                  }),
                  child: Row(
                    children: [
                      Text(
                        "login using",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),
                      Text(
                        isUsePhoneNumber ? " email" : " phone number",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Text(
                  "forgot password",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SubmitButton(
              title: 'Login',
              formKey: _loginFormKey,
              editTextControllers: _editTextControllers = {
                'email': emailEditingController,
                'password': passwordEditingController,
                'phone': phoneEditingController
              },
            )
          ],
        ),
      ),
    );
  }
}
