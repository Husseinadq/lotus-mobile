// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:lotus/data/repository/product_repo.dart';
import '../models/product_model.dart';

class ProductController extends GetxController {
  final ProductRepo productRepo;
  ProductController({
    required this.productRepo,
  });
// late ApiRespons apiRespons;
  List<Product> _products = [];
  List<Product> get products => _products;
  //  {'user': 1};
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getAllProducts() async {
    Response response = await productRepo.getAllProducts();
    if (response.statusCode == 200) {
      print(response.body);
      _products = [];
      _products.addAll(ProductsModel.fromJson(response.body).items);
      _isLoaded = true;

      update();
    }
  }
}
