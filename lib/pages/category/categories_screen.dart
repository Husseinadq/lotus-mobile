// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lotus/utils/dimensions.dart';

import '../../widgets/app_bar/app_bar.dart';
import 'main_categories_card.dart';
import 'main_side_category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [AppBarWidget(), Expanded(child: MainSideCategory())],
      ),
    );
  }
}
