import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../controller/category_controller.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class MainSideCategory extends StatefulWidget {
  const MainSideCategory({super.key});

  @override
  State<MainSideCategory> createState() => _MainSideCategoryState();
}

class _MainSideCategoryState extends State<MainSideCategory> {
  List<String>? titles = [
    "Mobiles & Accessories",
    "Gift Cards",
    "Home & Kitchen",
    "Beauty & Personal Care",
    "Mobiles & Accessories",
    "Gift Cards",
    "Home & Kitchen",
    "Beauty & Personal Care",
    "Gift Cards",
    "Home & Kitchen",
    "Beauty & Personal Care",
    "Gift Cards",
    "Home & Kitchen",
    "Beauty & Personal Care",
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    Get.find<CategoryController>().getAllCategories();

    return Expanded(
        child: GetBuilder<CategoryController>(
      builder: (categoryController) => ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: categoryController.allCategoriesList.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                    print(selected);
                  });
                },
                child: MainCategoriesCard(
                    categoryController.allCategoriesList[index].name!,
                    (selected == index ? true : false)),
              )),
    ));
  }
}

Widget MainCategoriesCard(String title, bool isSelected) {
  return Container(
    height: Dimensions.mainCategorySectionHeight,
    decoration: BoxDecoration(
      color: isSelected == true ? AppColors.primary : AppColors.lightgrey,
    ),
    child: Center(
        child: Padding(
      padding: EdgeInsets.all(Dimensions.height10),
      child: Text(
        title,
        maxLines: 2,
        softWrap: true,
      ),
    )),
  );
}
