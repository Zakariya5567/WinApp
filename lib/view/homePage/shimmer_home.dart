import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/themes.dart';

class ShimmerHomePage extends StatelessWidget {
 const ShimmerHomePage({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.03, vertical: height * 0.02),
          child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.04,
                  color: Colors.white,
                ),
               
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.03,
                  width: width*0.8,
                  color: Colors.white,
                ),
               SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.03,
                  color: Colors.white,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.03,
                   width: width*0.9,
                  color: Colors.white,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
          
          
          
                Container(
                  height: height * 0.05,
                  width: width * 0.6,
                  decoration:const BoxDecoration(
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(20)),
                    color: Colors.white,
                  
                  ),
                
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.30,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    border: Border.all(color: Colors.black26),
                    color: ConstColor.whiteColor,
                   
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.03,
                   width: width*0.4,
                  color: Colors.white,
                ),
                
                SizedBox(
                  height: height * 0.01,
                 
                ),
                Container(
                  height: height * 0.03,
                   width: width*0.4,
                  color: Colors.white,
                ),
              
                SizedBox(
                  height: height * 0.03,
                ),
                 Container(height: height*0.06,
                                
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
              ],
            ),
          ),
        )
      ],
    );
  }
}
