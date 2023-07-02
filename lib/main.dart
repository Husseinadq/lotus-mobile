import 'package:flutter/material.dart';
import 'package:lotus/controller/recommended_product_controller.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:get/get.dart';
import 'package:lotus/pages/home/home_screen.dart';
import 'package:lotus/pages/product/product_detail.dart';
import 'package:lotus/pages/profile/profile_screan.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'controller/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //to be sure the lib is binding corectly
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainShopPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
