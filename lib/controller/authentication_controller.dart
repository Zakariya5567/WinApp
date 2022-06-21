

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {


  @override
  void onClose() {
    // TODO: implement onClose
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    addressController.clear();
    passwordController.clear();
    confirmController.clear();
    super.onClose();
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  bool passwordVisibility=false;
  bool eyebutton=false;



  setVisibility(){
    passwordVisibility=!passwordVisibility;
    print(passwordVisibility);
    update();
  }
  
  seteyebutton(){
 
    eyebutton=!eyebutton;
    print(eyebutton);
    update();
    
  
    
 
  }

 
  emailValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Email";
    } else if
     (!GetUtils.isEmail(value)) 
     {return "Enter Valid Email";}

     return null;
     
  }


 nameValidation(value) {
  if (value.isEmpty) {
      return "Enter Your Name";
    }
   }
   

   addressValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Address";
    }
  }

  phoneValidation(value) {
   String pattern = r'^(?:[+0][1-9])?[0-9]{11}$';
   RegExp regExp = new RegExp(pattern);
 

    if (value.isEmpty) {
      return "Enter Your Phone Number";

    }
    else if(!regExp.hasMatch(value)){
      return "Enter Valid Phone Number";
    }
  
    
  }
  passwordValidation(value) {
    String pattern = r'^(?:[+0][1-9])?[0-9]{11}$';
   RegExp regExp = new RegExp(pattern);
 

    if (value.isEmpty) {
      return "Enter Your Password";
    }
    else if(value.length<6){
      return "Password Atleast 6 Character";
    }
  
  }

  confirmValidation(value) {
   
    if (value.isEmpty) {
      return "Enter Your Password Again";
    }
    else if(confirmController.text!=passwordController.text){
      return "Password Doesn't Match";
    }

    
  }

  
  

}


