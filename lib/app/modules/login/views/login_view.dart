import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                  LoginBox_(context),
                
                // ),
             
              ],
            ),
          ),
          
        );
  }


  
    @override
    Widget LoginBox_(BuildContext context) {
      return Container(
        // alignment: Alignment.center,
        width: 400,
        height: 500,
        
        decoration:const BoxDecoration(
          color: Color.fromARGB(255, 33, 35, 40),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(4),
          //   topRight: Radius.circular(4),
          //   bottomLeft: Radius.circular(4),
          //   bottomRight: Radius.circular(4),
          // ),
          border: Border(
            top: BorderSide(width: 4, color: Color.fromARGB(255, 255, 103, 64),
  
            ),
          ),  
        ),
        child: Column_insideLBox_(context),
      );
    }


    
    
      @override
      Widget Column_insideLBox_(BuildContext context){
        return Container(
          width: 620,
          height: 550,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              // color: Colors.amber,
              height: 30,
              width: 336,
              // child: ElevatedButton(onPressed: ()=>Get.toNamed('/home'), child: Text('Go Home')),
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sign in to your account",
                    style: TextStyle(fontSize: 24),
                  ),
                  
                ],
              ),),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              width: 336,
              height: 22,
              child:
              const Text("Username or email",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              ),
            ),
           const SizedBox(
              width: 336,
              height: 30,
              child: TextField(
                
                decoration: InputDecoration(
                  
                  hintStyle: TextStyle(color: Color.fromARGB(255, 61, 65, 74),),
                  filled: true,
                  fillColor: Color.fromARGB(255, 61, 65, 74),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
             Container(
              alignment: Alignment.bottomLeft,
              width: 336,
              height: 22,
              child:
              const Text("Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              ),
            ),
            const SizedBox(
              width: 336,
              height: 30,
              child: TextField(
                
                decoration: InputDecoration(
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color:Color.fromARGB(255, 33, 35, 40)),
                  // ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 61, 65, 74),),
                  filled: true,
                  fillColor: Color.fromARGB(255, 61, 65, 74),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 336,
              child: Row(
                children: [
                  SizedBox(
                height: 37,
              ),
              Container(
                color: Colors.white,
                width: 12,
                height: 12,
                // child: ChangeNotifierProvider(
                //   create: (_) => CheckboxProvider(),
                //   child: Consumer<CheckboxProvider>(
                //     builder: (context, checkboxProvider, _) => Checkbox(
                //       checkColor: Colors.black,
                //       activeColor: Color.fromARGB(255, 255, 103, 64),
                //       value: checkboxProvider._isChecked,
                //       onChanged: (value) {
                //         checkboxProvider.isChecked = value ?? true;
                //       }
                //     ),
                //   ),
                //   ),
                child:
                   Obx(() =>
                      CheckboxListTile(
                      checkColor: Colors.black,
                      activeColor: Color.fromARGB(255, 255, 103, 64),
                      value: controller.selected.value == 2,
                      onChanged:(val){
                        val?? controller.selected.value == 1 ;
                      } 
                      ),
                   ),
                
              ),
              SizedBox(width: 10),
              SizedBox(
                child:Text("Remember me",
                style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 110),
              ),
              SizedBox(
                child: Text("Forgot Password?",
                style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                ),
              ),
            ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 336,
              // child:  ChangeNotifierProvider(
              //   create: (_) => ButtonProvider(),
              //   child: Consumer<ButtonProvider>(
              //     builder: (context, checkboxProvider, _) => 
              //     OutlinedButton(
              //   style: OutlinedButton.styleFrom(
              //     minimumSize: Size(336, 37),
              //     textStyle: TextStyle(
              //       color: Colors.white,
              //       fontSize: 13,
                    
              //       ),
              //       backgroundColor: Color.fromARGB(255, 255, 103, 64),
              //   ),
              //   child: Text("Sign In",
              //   style: TextStyle(color: Colors.white,),
              //   ),
              //   onPressed: () => {
              //     ButtonProvider(),
              //   }
              // ),
              //   ),
              // ),
              child:  OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(336, 37),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 13, 
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 103, 64),
                ),
                child: Text("Sign in",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                
                onPressed:(){
                  ()=> (){};
                } 
                ),
              
            ),
            Container(
              width: 336,
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child:Text("Try another way",
                style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                ),
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 665,
                    height: 58,
                    // alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: ()=>Get.toNamed('/home'), child: Text('Go Home')),
                        // Text("New user?",
                        // style: TextStyle(color: Colors.white,),
                        // ),
                        SizedBox(
                          width: 19,
                        ),
                        // Text("Register",
                        // style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                        // ),

                      ],
                      
                    ),
                    // child: RichText(text: TextSpan(
                    //   children: [
                    //     TextSpan(
                    //       text: "New user?",
                    //       style: TextStyle(color: Colors.white,),
                    //     ),
                    //     TextSpan(),
                    //     TextSpan(
                    //       text: "Register",
                    //       style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                    //     ),
                    //   ], 
                    // ),
                    // ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 46, 47, 55),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
        );
      }
}
