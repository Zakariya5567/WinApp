
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/authentication_controller.dart';
import '../../utils/themes.dart';
class ProfileTextField extends StatelessWidget {
   ProfileTextField({this.controller,this.hintText,this.icon});

   AuthenticationController authenticationController=Get.put(AuthenticationController());

   TextEditingController controller =TextEditingController();
   String hintText;
   IconData icon;


  @override
  Widget build(BuildContext context) {
   return   Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.height*0.015,
         vertical: MediaQuery.of(context).size.width*0.018),
      child: Material(
        borderRadius: BorderRadius.circular(15),
              
       // elevation:6,

        shadowColor: Colors.black54,
        child: TextFormField(
          autofocus: false,
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: const TextStyle(fontSize: 14),
         obscureText: controller==authenticationController.passwordController||
         controller== authenticationController.confirmController ?
          authenticationController.passwordVisibility:false,
          keyboardType: controller == authenticationController.phoneController
              ? TextInputType.phone
              : TextInputType.text,
         
          // ignore: missing_return
          validator: (value){
          if (controller==authenticationController.nameController){
              return authenticationController.nameValidation(value);
            }
            else
             if (controller==authenticationController.emailController){
              return authenticationController.emailValidation(value);
            }
             else if (controller==authenticationController.phoneController){
              return authenticationController.phoneValidation(value);
            }
            else if (controller==authenticationController.addressController){
              return authenticationController.addressValidation(value);
            }             
          },
          
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            
            errorStyle: const TextStyle(fontSize: 12),
            fillColor: Colors.grey.shade100,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height*0.022,
              horizontal: MediaQuery.of(context).size.width*0.022,
            ),
            hintText: hintText,
      
            hintStyle:  const TextStyle(fontSize: 14, color:ConstColor.greycolor),
            border:  OutlineInputBorder(
      
             borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ConstColor.darkbrownColor),
            ),
            focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(
                color:ConstColor.darkbrownColor
              ),
              
            ),
            
          ),
        ),
      ),
    );
  
  }
}