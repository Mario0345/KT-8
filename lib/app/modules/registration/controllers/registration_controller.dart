import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/services/auth_service.dart';

class RegistrationController extends GetxController {
  
  AuthService authService = Get.find();
  var mailContr = TextEditingController();
  var passContr = TextEditingController();
  var passRepContr = TextEditingController();


  void signUP(){
    
    if(mailContr.text.contains("@")){
      showError("Invalid mail");
       return;
    }
    if(mailContr.text.length < 8){
      showError("Mail length must be > 8");
       return;
    }
    if(passContr.text.length < 8){
      showError("Password length must be > 8");
       return;
    }
    if(passContr.text != passRepContr.text){
      showError("Password isn't matching");
      return;
    }
  }

  void tryRegister(String mail, String password){
    authService.registration(mail,password);
  }

  void showError(String message){
    if(passContr.text != passRepContr.text){
      Get.showSnackbar(
        GetSnackBar(
          message: 'Wrong password',
        backgroundColor: Colors.red,
        duration: Duration(seconds:1),
        ), 
      );
    }
  }

  void showSnack(String message, {isError == true}){
    if(passContr.text != passRepContr.text){
      Get.showSnackbar(
        GetSnackBar(
          message: 'Wrong password',
        backgroundColor: Colors.red,
        duration: Duration(seconds:1), //TODO
        ), 
      );
    }
  }

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
