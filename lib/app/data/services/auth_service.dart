import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt_8/app/data/services/storage_service.dart';

import '../../core/constants.dart';
import 'api_service.dart';


class AuthService extends GetxService {
  StorageService storageService = Get.find();
  ApiService apiService = Get.find();
  bool isLogged = false;

  Dio get client = Dio(BaseOptions(
    baseUrl: Constants.baseUrl,
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

    var refresh =await storageService.getRefresh();
    if(refresh =! null){
      bool refreshResult = apiService.updateTokens();
      
      // return;
    }
    else{
      isLogged = false;
    }
    // return this;
    // await Future.delayed(const Duration(seconds:2));
  }


  Future<AuthService>init() async {
    print("test: try auth");
    return this;
  } 

}