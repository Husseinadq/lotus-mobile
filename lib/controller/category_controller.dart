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

  List<Category> _categories = [];
  List<Category> get allCategoriesList => _categories;

  List<Category> _subCategories = [];
  List<Category> get subCategories => _subCategories;

  Future<void> getSingleCategory(int id) async {
    Response response = await categoryRepo.getSingleCategory(id);
    if (response.statusCode == 200) {
      _singleCategoryList = [];
      _singleCategoryList.addAll(Categories.fromJson(response.body).categories);
      update();
    } else {
      //TODO handel error
    }
  }

  Future<void> getAllCategories() async {
    Response response = await categoryRepo.getAllCategories();
    if (response.statusCode == 200) {
      _categories = [];
      _categories.addAll(Categories.fromJson(response.body).categories);
      update();
    } else {
      //TODO handel error
    }
  }

  Future<void> getSubCategories(int parintId) async {
    Response response = await categoryRepo.getSubCategories({"parint_id":parintId});
    if (response.statusCode == 200) {
      _subCategories = [];
      _subCategories.addAll(Categories.fromJson(response.body).categories);
      update();
    } else {
      //TODO handel error
    }
  }
}
