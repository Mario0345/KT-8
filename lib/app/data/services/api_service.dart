import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt_8/app/core/constants.dart';

class ApiService extends GetxService {

   Dio get baseClient => Dio(BaseOptions(
    baseUrl: Constants.baseUrl
  ),);

  bool refreshTokens(){
    return refreshTokens();
  }
  Future<ApiService> init() async {
    return this;
  }

}