import 'package:flutter/material.dart';
import 'package:lotus/pages/splash/login/login_form.dart';
import 'package:lotus/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.maxFinite,
            color: AppColors.primary,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   child: Text(
                //     "LOGIN",
                //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                //   ),
                // ),
                Container(
                  height: 300,
                  child: Image.asset(
                    "assets/images/slide3.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(7),
                  padding: EdgeInsets.all(10),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //     border: Border.all(color: AppColors.secondry, width: 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "please login or sign up for easy shopping",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
