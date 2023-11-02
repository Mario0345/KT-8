import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegistrationView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            Text()
          )
          TextField(
            
          )
          TextField(
            
          )
          ElevatedButton(onPressed: ()=> Get.toNamed(), child: Text('To signup'),),
          Text(
            'RegistrationView is working',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
