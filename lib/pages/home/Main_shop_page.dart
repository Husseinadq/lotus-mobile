import 'package:flutter/material.dart';
import 'package:lotus/pages/home/home_screen.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';

class MainShopPage extends StatefulWidget {
  const MainShopPage({super.key});

  @override
  State<MainShopPage> createState() => _MainShopPageState();
}

class _MainShopPageState extends State<MainShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          
          Expanded(child: SingleChildScrollView(child: HomeScreen())),
        ],
      ),
    );
  }
}
