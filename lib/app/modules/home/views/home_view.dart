import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Expanded(
                  ElevatedButton(onPressed: () => Get.toNamed('/loginP') , child: Text('Go to Login'),),
                
                // ),
             
              ],
            ),
          ),
          
        );
  }


  
   


    
    
     
}
