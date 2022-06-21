import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/controller/history_controller.dart';
import 'package:winapp/controller/overview_controller.dart';

import '../../utils/themes.dart';
import '../widgets/bottom_navigationbar.dart';
import '../widgets/pages_appbar.dart';

class WinnerHistory extends StatelessWidget {
  WinnerHistory({Key key}) : super(key: key);
  OverviewController overviewController = Get.put(OverviewController());
  HistoryController winnerHistoryController=Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: height * 0.1,
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: PagesAppbar(
              icon: Icons.arrow_back,
              onPressed: () {
                Get.back();
                print("back button");
              },
              text: "WINNER HISTORY"),
        ),
        body: SingleChildScrollView(
          child: GetBuilder(
              init: OverviewController(),
              builder: (controller) {
                return

                // winnerHistoryController.isloading==true?
                // ShimmerHistory():
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.03,
                              vertical: height * 0.01),
                          child: 
                          Material(
                            elevation: 6,
                              borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: height * 0.16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black12),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        
                                      ConstColor.cardgreycolor1,
                                     ConstColor.cardgreycolor2,
                                      ]),
                                 
                                  ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.03,
                                    vertical: height * 0.018),
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.2,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/ph.jpg"),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.02,
                                          vertical: height * 0.002),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "AHMAD KHAN",
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            "iphone 13 pro max",
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            "KPk swat shamozai rangila",
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                             DateTime.now().day.toString()+"-"+
                                            DateTime.now().month.toString()+"-"+
                                              DateTime.now().year.toString()+",  "+
                                              DateTime.now().hour.toString()+":"+
                                              DateTime.now().minute.toString()+":"+
                                               DateTime.now().second.toString(),
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
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
              }),
        ),
        bottomNavigationBar: BottonBar(),
      ),
    );
  }
}
