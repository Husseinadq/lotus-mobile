import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:lotus/data/repository/category_repo.dart';
import 'package:lotus/models/category_model.dart';

class CategoryController extends GetxController {
  final CategoryRepo categoryRepo;
  CategoryController({
    required this.categoryRepo,
  });

  List<Category> _singleCategoryList = [];
  List<Category> get singleCategoryList => _singleCategoryList;

  List<Category> _allCategoriesList = [];
  List<Category> get allCategoriesList => _allCategoriesList;

  Future<void> getSingleCategory(int id) async {
    Response response = await categoryRepo.getSingleCategory(id);
    if (response.statusCode == 200) {
      _singleCategoryList = [];
      _singleCategoryList.addAll(Categories.fromJson(response.body).categories);
      singleCategoryList.forEach(
        (element) {
          print(element.id);
          print(element.name);
        } ,
      );
      update();
    }
  }

  Future<void> getAllCategories() async {
    Response response = await categoryRepo.getAllCategories();
    if (response.statusCode == 200) {
      _allCategoriesList = [];
      _allCategoriesList.addAll(Categories.fromJson(response.body).categories);
      _allCategoriesList.forEach(
        (element) {
          print(element.id);
                    print(element.name);

        },
      );
      update();
    }
  }
}
