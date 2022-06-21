import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:winapp/controller/profile_controller.dart';

import '../../utils/themes.dart';

class ShimmerProfilePage extends StatelessWidget {
  const ShimmerProfilePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return   Column(
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
                             Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade500,
                              child: Padding(
                                padding: EdgeInsets.only(top: height * 0.14),
                                child: Center(
                                  child: CircleAvatar(
                                        radius: height * 0.105,
                                        backgroundColor: Colors.white,
                                       
                                      )
                                      ,
                                ),
                              ),
                            ),
                          ],
                        ),
                  
                          //-----------------------------------------------------------------------------
                          //second part of the screen
                  
                          //name
                          SizedBox(
                              height: height * 0.02,
                            ),
                                
                  
                         Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                             child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                             
                               child: Container(height: height*0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),),
                             ),
                           ),
                          //Email
                          
                  
                          Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                             child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                             
                               child: Container(height: height*0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),),
                             ),
                           ),
                          //phone
                             Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                             child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                             
                               child: Container(height: height*0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),),
                             ),
                           ),
                        
                     Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                             child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                             
                               child: Container(height: height*0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),),
                             ),
                           ),
                    
                            Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                              child: Container(height: height*0.06,
                                  
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                borderRadius:  BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(20),
                                                      ),
                                  ),
                              ),
                            ),
                             ),
                  
                          
                      ],
                    );
                  
               
          
       
  }
}
