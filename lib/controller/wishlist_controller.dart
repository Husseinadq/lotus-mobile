// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:lotus/data/repository/wishlist_repo.dart';
import 'package:lotus/models/wishlist_model.dart';

class WishlistController extends GetxController {
  final WishlistRepo wishlistRepo;
  WishlistController({
    required this.wishlistRepo,
  });
// late ApiRespons apiRespons;
  List<WishlistItem> _wishlistItems = [];
  List<WishlistItem> get wishlistItems => _wishlistItems;
  //  {'user': 1};
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getAllWishlistItems() async {
    Response response = await wishlistRepo.getAllWishlistItems({'user': 1});
    if (response.statusCode == 200) {
      print(response.body);
      _wishlistItems = [];
      _wishlistItems.addAll(WishlistModel.fromJson(response.body).items);
      _isLoaded = true;

      update();
    }
  }
  Future<void> addToWishlist(userId,wishlistId,productId) async {
    Response response = await wishlistRepo.addToWishlist({
      "user":userId,
      "wish_list_id":wishlistId,
      "product_id": productId
    });
    if (response.statusCode == 200) {
      print(response.body);
     if(response.body['status']==true){
       _wishlistItems.add(WishlistModel.fromJson(response.body).items[0]);
       _isLoaded = true;
       update();
     }
      // TODO: error handel if it dose not added
    }
    /// TODO error handel if it dose not go will

  }
  Future<void> removeFromWishlist(int id) async {
    _isLoaded = false;
    Response response = await wishlistRepo.removFromWishlist({'id': id});
    if (response.statusCode == 200) {
      //TODO remove singl item form list
      getAllWishlistItems();
    }
  }
}
