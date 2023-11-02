import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt_8/app/core/constants.dart';
import 'package:kt_8/app/data/services/api_service.dart';
import 'package:kt_8/app/data/services/auth_service.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  ApiService apiService = Get.find();

  var authService = AuthService();
  
  Dio client = Dio(BaseOptions(baseUrl: Constants.baseUrl));

  Future<ApiService> init() async{

    return ApiService();
  }


  @override
  void onInit() {
    super.onInit();
  }


  @override
  void onReady() {
    if(authService.isLogged){
      Get.toNamed(Routes.HOME);
    }
    else{
      Get.toNamed(Routes.LOGIN);
    }
    super.onReady();
  }

  
}
