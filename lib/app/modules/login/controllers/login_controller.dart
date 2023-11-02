import 'package:get/get.dart';
import 'package:kt_8/app/routes/app_pages.dart';

class LoginController extends GetxController {
  void toRegistration() => Get.toNamed(Routes.REGISTRATION);

  Rxn<int> selected = Rxn<int>();
  bool? isChecked =false;
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
