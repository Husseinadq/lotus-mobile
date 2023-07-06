// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lotus/pages/category/expansion_tile_card.dart';
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
        children: [
          AppBarWidget(),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: Dimensions.categoryScreenHeight,
                    child: Column(
                      children: [MainSideCategory()],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: Dimensions.categoryScreenHeight,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: const [
                        ExpansionTileCard(
                          title: 'Smartphones',
                        ),
                        ExpansionTileCard(
                          title: 'Top Brand',
                        ),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
