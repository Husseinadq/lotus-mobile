import 'package:flutter/material.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:get/get.dart';
import 'package:lotus/pages/product/product_detail.dart';
import 'controller/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();//to be sure the lib is binding corectly
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainShopPage());
  }
}
