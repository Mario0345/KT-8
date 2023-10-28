import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt_8/app/data/services/api_service.dart';
import 'package:kt_8/app/data/services/auth_service.dart';
import 'package:kt_8/app/data/services/storage_service.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

void initServices() async {
  Get.putAsync(() => StorageService().init());
  Get.putAsync(() => ApiService().init());
  Get.putAsync(() => AuthService().tryAuth());
  


}
