import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/controller/profile_controller.dart';
import '../../controller/history_controller.dart';
import '../../utils/themes.dart';
import '../widgets/bottom_navigationbar.dart';
import '../widgets/custombuildButton.dart';
import '../widgets/profile_textfield.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ProfileController profileController = Get.put(ProfileController());

  HistoryController historyController=Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: ConstColor.whiteColor,
          key: scaffoldKey,
          body: SingleChildScrollView(
            child: GetBuilder(
                init: ProfileController(),
                builder: (controller) {
                  return
                  // historyController.isloading==true?
                  // ShimmerProfilePage():
                  
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: height * 0.23,
                            width: width,
                            decoration:const BoxDecoration(
                              borderRadius:  BorderRadius.only(
                                  bottomRight: Radius.circular(200),
                                  bottomLeft: Radius.circular(10)),
                              color: ConstColor.lightbrownColor,
                            ),
                          ),
                          Container(
                            height: height * 0.21,
                            width: width,
                            decoration:const BoxDecoration(
                              borderRadius:  BorderRadius.only(
                                  bottomRight: Radius.circular(200),
                                  bottomLeft: Radius.circular(20)),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    ConstColor.darkbrownColor,
                                    ConstColor.darklightbrownColor,
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.01),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: const Icon(Icons.arrow_back),
                                    color: Colors.white,
                                    iconSize: 30,
                                  ),
                                  Text(
                                    "PROFILE",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: width * 0.2,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.14),
                            child: Center(
                              child: InkWell(
                                  onTap: () {
                                    profileController.showPicker(context);
                                  },
                                  child: CircleAvatar(
                                    radius: height * 0.105,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: height * 0.096,
                                      backgroundColor:
                                          ConstColor.darkbrownColor,
                                      child: CircleAvatar(
                                        radius: height * 0.090,
                                        backgroundImage:
                                            profileController.image != null
                                                ? FileImage(
                                                    profileController.image,
                                                  )
                                                : null,
                                        backgroundColor:
                                            ConstColor.darklightbrownColor,
                                        child: profileController.image == null
                                            ? Icon(
                                                Icons.camera_alt_outlined,
                                                color: ConstColor.whiteColor,
                                                size: width * 0.10,
                                              )
                                            : null,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),

        //-----------------------------------------------------------------------------
        //second part of the screen

        //name

         ProfileTextField(controller:profileController.nameController,
         hintText: "Name",icon: Icons.person_add_alt_rounded,),

        //Email

         ProfileTextField(controller:profileController.emailController,
         hintText: "Email",icon: Icons.email_rounded,),

         //phone

         ProfileTextField(controller:profileController.phoneController,
         hintText: "Phone",icon: Icons.phone),

        //address

         ProfileTextField(controller:profileController.addressController,
         hintText: "Address",icon: Icons.location_on,),

         CustomBuildButton(buttonName: "UPDATE PROFILE",onPressed: (){},)

        
                    ],
                  );
                }),
          ),
          bottomNavigationBar: BottonBar()),
    );
  }
}
