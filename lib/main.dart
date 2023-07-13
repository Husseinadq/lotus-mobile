import 'package:flutter/material.dart';
import 'package:lotus/controller/product_controller.dart';
import 'package:lotus/controller/recommended_product_controller.dart';
import 'package:lotus/controller/user_controller.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:get/get.dart';
import 'package:lotus/pages/search/search_results_screen.dart';
import 'package:lotus/pages/splash/login/login_screen.dart';
import 'package:lotus/pages/splash/splash_screen.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';
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
    Get.find<ProductController>().getAllProducts();
    Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
      theme: ThemeData(primaryColor: Colors.amber),
      initialRoute: RouteHelper.getInitial(),
      getPages: RouteHelper.routes,
    );
  }
}
