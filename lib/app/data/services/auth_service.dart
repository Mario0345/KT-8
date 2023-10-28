import 'package:get/get.dart';
import 'package:kt_8/app/data/services/storage_service.dart';


class AuthService extends GetxService {
  StorageService storageService = Get.find();
  bool isLogged = false;

  Future<AuthService> tryAuth() async {

    String? refreshToken =await storageService.getRefreshToken();
    if(refreshToken == null){
      isLogged = false;
      
    }
    else{
      // bool refreshResult = await 
    }
    return this;
  }

}