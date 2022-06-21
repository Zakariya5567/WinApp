import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/view/authentication/singin_page.dart';
import '../../controller/authentication_controller.dart';
import '../../utils/themes.dart';
import '../widgets/buildTextField.dart';
import '../widgets/customappbar.dart';
import '../widgets/custombuildButton.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({Key key}) : super(key: key);

  AuthenticationController authenticationController =
      Get.put(AuthenticationController());

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
                // Image.asset("assets/images/medal.png"),
                CustomAppBar(),
                SizedBox(height: height * 0.02),
          
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
                                    Border.all(color: Colors.grey.shade200)),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.02),
                               const Text(
                                  "FORGOT PASSWORD",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: ConstColor.darkbrownColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: height * 0.02),
                                BuildTextField(
                                  controller:
                                      authenticationController.emailController,
                                  hintText: "Enter Your Email",
                                  icon: Icons.email,
                                ),
                                   SizedBox(height: height * 0.02),
                              ],
                            )))),

                CustomBuildButton(
                  buttonName: "SEND",
                  onPressed: () {
                    print("forget password");
                  },
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Back to ",
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
                        child: Text("Sigin?",
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
