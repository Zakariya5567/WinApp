import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/authentication_controller.dart';
import '../../utils/themes.dart';


class BuildTextField extends StatelessWidget {
   BuildTextField({this.controller,this.hintText,this.icon});

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
            else if (controller==authenticationController.passwordController){
              return authenticationController.passwordValidation(value);
            }
            else if (controller==authenticationController.confirmController){
              return authenticationController.confirmValidation(value);
            }
             
             
          },
          
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            
            suffixIcon: controller == authenticationController.passwordController ||
                    controller == authenticationController.confirmController
                ? IconButton(onPressed: ()async{
                  print("Clickkkkk");
                await authenticationController.setVisibility();
                await authenticationController.seteyebutton();

                }, icon:authenticationController.eyebutton?
                const Icon (Icons.visibility_off):const Icon(Icons.visibility))
                : null,
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
      
             borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: ConstColor.greycolor),
            ),
            focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
              borderSide:  BorderSide(
                color:ConstColor.greycolor
              ),
              
            ),
            
          ),
        ),
      ),
    );
  
  }
}