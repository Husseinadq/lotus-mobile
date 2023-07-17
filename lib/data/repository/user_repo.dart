// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get_connect/http/src/response/response.dart';

import '../../utils/app_constants.dart';
import '../api/api_clint.dart';

class UserRepo {
  final ApiClient apiClient;
  UserRepo({
    required this.apiClient,
  });
  Future<Response> login(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.USER_LOG_IN +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }

  Future<Response> signUp(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.USER_SIGN_UP +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point removFromCart
  }

  Future<Response> logOut(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.USER_LOG_OUT +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }

  Future<Response> getProfile(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.USER_PROFILE +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }

  Future<Response> getStates() async {
    return await apiClient.getData(
      AppConstants.API_V +
          AppConstants.GET_STATES +
          AppConstants.KEY +
          AppConstants.LANG,
    ); //we bass as url the end point
  }

  Future<Response> setStateAddress(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.SET_USER_STATE +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }
}
