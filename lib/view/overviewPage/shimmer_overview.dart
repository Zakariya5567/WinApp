import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../controller/overview_controller.dart';
import '../../utils/themes.dart';

class ShimmerOverview extends StatelessWidget {
  const ShimmerOverview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return
             Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            height: height * 0.2,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(height: height*0.02,
                              width: width*0.4,color: Colors.white,),
                              Container(height: height*0.02,
                              width: width*0.4,color: Colors.white,)
                             
                            ],
                          ),
                         
                          SizedBox(
                            height: height * 0.02,
                          ),
                          
                         
                           Container(height: height*0.03,
                              color: Colors.white,),

                          SizedBox(
                            height: height * 0.01,
                          ),

                            Container(height: height*0.07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),),

                          SizedBox(
                            height: height * 0.01,
                          ),

                        Container(height: height*0.2,
                              
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),),
              
                          SizedBox(
                            height: height * 0.02,
                          ),

                        Container(height: height*0.07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),),
                              
                          SizedBox(
                            height: height * 0.02,
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
                    )
                  ],
                ),
              );
         
  }
}
