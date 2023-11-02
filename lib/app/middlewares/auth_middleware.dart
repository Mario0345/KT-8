

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kt_8/app/data/services/auth_service.dart';

import '../routes/app_pages.dart';

class AuthMiddleware extends GetMiddleware{
  @override
  RouteSettings? redirect(String? route){
    print("redirect middleware");
    AuthService authService = Get.find();

    if(authService.isLogged){
      return const RouteSettings(name: Routes.HOME);
    }else{
      return const RouteSettings(name: Routes.REGISTRATION);
    }


  }




}