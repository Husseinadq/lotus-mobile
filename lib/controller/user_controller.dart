import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lotus/data/repository/user_repo.dart';
import 'package:lotus/models/user_model.dart';
import 'package:lotus/routes/routes_helper.dart';

class UserController extends GetxController {
  final UserRepo userRepo;
  UserController({
    required this.userRepo,
  });
  late User _user;
  bool _isConfirm = false;

  User get getUser => _user;
  bool get isConfirm => _isConfirm;
  //  = User(
  //     id: 0,
  //     firstName: "firstName",
  //     middleName: "middleName",
  //     lastName: "lastName",
  //     mobile: "mobile",
  //     email: "email",
  //     token: "token");

  Map<String, dynamic> _body = {};

  Future<bool> login(String email, String password) async {
    try {
      Response response =
          await userRepo.login(_body = {"email": email, "password": password});
      if (response.statusCode == 200) {
        if (response.body['status']) {
          _user = User(
              id: 0,
              firstName: response.body['usre']['first_name'],
              middleName: response.body['usre']['middle_name'],
              lastName: response.body['usre']['last_name'],
              mobile: response.body['usre']['mobile'],
              email: response.body['usre']['email'],
              token: response.body['usre']['token']);
          update();
          //  return response.body['usre']['token'];
          return true;
        }

        update();
        return false;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> logOut() async {
    try {
      print(getUser.token);
      Response response = await userRepo.logOut({"token": getUser.token});
      if (response.statusCode == 200) {
        if (response.body['errorNumber'] == 'S001') {
          _user = User(
              id: 0,
              firstName: "firstName",
              middleName: "middleName",
              lastName: "lastName",
              mobile: "mobile",
              email: "email",
              token: "token");
          Get.offAndToNamed(RouteHelper.getInitial());
        }
      }
    } catch (e) {}
  }

  Future<void> signUp() async {}

  bool isThereUser() {
    if (_user.email == "email") {
      return false;
    } else {
      return true;
    }
  }
}
