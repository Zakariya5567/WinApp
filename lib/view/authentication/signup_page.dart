import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/view/authentication/singin_page.dart';
import '../../controller/authentication_controller.dart';
import '../../utils/themes.dart';
import '../homePage/home_page.dart';
import '../widgets/buildTextField.dart';
import '../widgets/customappbar.dart';
import '../widgets/custombuildButton.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key key}) : super(key: key);

  AuthenticationController authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder(
            init: AuthenticationController(),
            builder: (controller) {
              return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset("assets/images/medal.png"),

                      CustomAppBar(),

                      SizedBox(
                        height: height * 0.02,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Material(
                          color: ConstColor.whiteColor,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: Colors.grey.shade200)
                                    ),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.02),
                                const Text(
                                  "CREATE ACCOUNT",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color:ConstColor.darkbrownColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: height * 0.02),
                                BuildTextField(
                                  controller:
                                      authenticationController.nameController,
                                  hintText: "Full Name",
                                  icon: Icons.person,
                                ),
                                BuildTextField(
                                  controller:
                                      authenticationController.emailController,
                                  hintText: "Email",
                                  icon: Icons.email,
                                ),
                                BuildTextField(
                                  controller:
                                      authenticationController.phoneController,
                                  hintText: "Phone Number",
                                  icon: Icons.phone,
                                ),
                                BuildTextField(
                                  controller: authenticationController
                                      .addressController,
                                  hintText: "Address",
                                  icon: Icons.location_on,
                                ),
                                BuildTextField(
                                  controller: authenticationController
                                      .passwordController,
                                  hintText: "Password",
                                  icon: Icons.lock,
                                ),
                                BuildTextField(
                                  controller: authenticationController
                                      .confirmController,
                                  hintText: "Conform Password",
                                  icon: Icons.lock,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      CustomBuildButton(
                        buttonName: "Sign Up",
                        onPressed: () {
                          Get.to(HomePage());
                          print("sign up");
                        },
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(SignInPage());
                              },
                              child: Text("Sign in",
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
                  ));
            }),
      ),
    );
  }
}
