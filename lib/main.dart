import 'package:flutter/material.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:get/get.dart';
import 'package:lotus/pages/product/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductDetail());
  }
}
