// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:lotus/utils/app_constants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  late String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({
    required this.appBaseUrl,
  }) {
    token = AppConstants.TOKEN;
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token', //Bearer is the type of token
    };
  }

//this method get data from server
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
  //this method get data from server
  Future<Response> postData(String uri,Map<String,dynamic> data) async {
    try {
      Response response = await post(uri,data);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
