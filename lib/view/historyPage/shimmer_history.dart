// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../controller/overview_controller.dart';

class ShimmerHistory extends StatelessWidget {
 const  ShimmerHistory({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03, vertical: height * 0.01),
              child: Container(
                height: height * 0.17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey.shade300,
                          Colors.grey.shade100
                        ])
                    ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: height * 0.02),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade500,
                    child: Row(
                      children: [
                        Container(
                            height: height * 0.2,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            )),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.03,
                              vertical: height * 0.01),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.025,
                                width: width*0.5,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                height: height * 0.020,
                                width: width*0.4,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                               Container(
                                height: height * 0.020,
                                width: width*0.4,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                height: height * 0.015,
                                width: width*0.5,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
