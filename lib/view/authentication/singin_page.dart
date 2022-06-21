import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/view/authentication/signup_page.dart';
import '../../controller/authentication_controller.dart';
import '../../utils/themes.dart';
import '../widgets/buildTextField.dart';
import '../widgets/customappbar.dart';
import '../widgets/custombuildButton.dart';
import 'forget_password_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key key}) : super(key: key);

 AuthenticationController authenticationController=Get.put(AuthenticationController());


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const CustomAppBar(),
    
                 SizedBox(
                  height: height*0.03,
                ),

                 Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Material(
                          color: ConstColor.whiteColor,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            decoration:  BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                              border:Border.all(color:Colors.grey.shade200 )
                          
                          
                             ),
                            child: Column(
                              children: [
                                  SizedBox(
                                  height: height*0.02 ),
                                 const Text(
                        "SIGN IN",
                style:TextStyle(
                            fontSize: 24,
                            color:ConstColor.darkbrownColor,
                            fontWeight: FontWeight.bold),
                      ),
                       SizedBox(
                                  height: height*0.02 ), BuildTextField(
                  controller:authenticationController.emailController,
                  hintText: "Email",
                  icon:Icons.email ,
                ),
                  BuildTextField(
                  controller:authenticationController.passwordController,
                  hintText: "Password",
                  icon:Icons.lock ,
                ),
               
                 Padding(
                  padding: const EdgeInsets.only(top:10,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(ForgetPasswordPage());
                        },
                        child: Text("Forget password?",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                      )
                    ],
                  ),
                ),
              
                               const  SizedBox(
                                  height: 20,
                                ), ]))) ),
    
               
                 CustomBuildButton(
                  buttonName: "Log in",
                  onPressed: (){print("sign in");},
    
                ),
                
               
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account? ",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(SignUpPage());
                        },
                        child: Text("Create",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )),
                      )
                    ],
                  ),
                ),
           
              ],
            )),
      ),
    );
  }
}
