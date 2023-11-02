import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt_8/app/data/services/storage_service.dart';
import 'package:kt_8/app/routes/app_pages.dart';

import '../../core/constants.dart';
import '../models/jwt.dart';
import 'api_service.dart';


class AuthService extends GetxService {
  var authService = AuthService();
  StorageService storageService = Get.find();
  ApiService apiService = Get.find();
  bool isLogged = false;

  Dio  client = Dio(BaseOptions(
    baseUrl: Constants.baseUrl
  ));


  Future<bool> registration(String mail, String password) async{

    try{
      var response = await client.post(ApiEndpoints.registration, data:{
        "email": mail,
        "password": password,
      });
      var tokens = JWT.fromJson(response.data);
      if(response.statusCode == 200){
      return true;
    }
    }catch(e){
      print('Error ${e}');
    }
    
    return false;
  }
  
  Future<void> tryAuth() async {

   String? refreshToken =await storageService.getRefreshToken();
    if(refreshToken == null){
      isLogged = false;
      return;
    }
    else{
      bool refreshResult = apiService.refreshTokens();
      isLogged = refreshResult;
    }
    // return this;
    // await Future.delayed(const Duration(seconds:2));
    
  }

  void tryRegister(String? mail, String password) => 
    authService.registration(null,password);

  Future<AuthService>init() async {
    print("test: try auth");
    await tryAuth();
    return this;
  } 

  void signOut(){
    isLogged = false;
    storageService.clearStorage();
    Get.offAllNamed(Routes.LOGIN);
  }

  void trySign(){
    //TODO process of receiving data

    if(isLogged){
      Get.toNamed(Routes.HOME);
    }
    else{
      Get.toNamed(Routes.LOGIN);
    }


  }

}