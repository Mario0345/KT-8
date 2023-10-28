import 'package:get/get.dart';
import 'package:kt_8/app/data/services/api_service.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  ApiService apiService = Get.find();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
