import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWinnerPage extends StatelessWidget {
  ShimmerWinnerPage({Key key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade500,
      child: Container(
        height: height * 0.65,
        width: width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(80),
              topLeft: Radius.circular(80),
              topRight: Radius.circular(40),
              
            ),
            border: Border.all(color: Colors.black,
            width: 2)
           // color: Colors.white
           ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.03,
              width: width * 0.7,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.03,
              width: width * 0.5,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.03,
              width: width * 0.5,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.3,
              width: width * 0.60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                 
                  ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
           Container(
              height: height * 0.03,
              width: width * 0.6,
              color: Colors.white,
            ),
           
            SizedBox(
              height: height * 0.01,
            ),
           Container(
              height: height * 0.03,
              width: width * 0.7,
              color: Colors.white,
            ),
           
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.03,
              width: width * 0.6,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
