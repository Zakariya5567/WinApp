import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/overview_controller.dart';
import '../../utils/themes.dart';
import '../widgets/bottom_navigationbar.dart';
import '../widgets/pages_appbar.dart';

class YourHistory extends StatelessWidget {
  YourHistory({Key key}) : super(key: key);
  OverviewController overviewController = Get.put(OverviewController());

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
              text: "YOUR HISTORY"),
        ),
        body: SingleChildScrollView(
          child: GetBuilder(
              init: OverviewController(),
              builder: (controller) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.03,
                              vertical: height * 0.01),
                          child:  Material(
                            elevation: 6,
                              borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: height * 0.18,
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
                                            "ORDER ID: " "1234",
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
                                          height: height * 0.005,
                                          ),
                                          Text(
                                            "Total tickets: 4",
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: height * 0.005,
                                          ),
                                          Text(
                                            "Total price: Rs. 40",
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: height * 0.005,
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
                                                fontSize: 14,
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
