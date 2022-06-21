import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/history_controller.dart';
import '../../controller/overview_controller.dart';
import '../../utils/themes.dart';
import '../widgets/custombuildButton.dart';
import '../widgets/pages_appbar.dart';
import '../widgets/purhase_detail.dart';

class OverviewPage extends StatelessWidget {
  OverviewPage({Key key}) : super(key: key);
  OverviewController overviewController=Get.put(OverviewController());
  HistoryController historyController=Get.put(HistoryController());

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
              text: "OVERVIEW"),
        ),
        body: SingleChildScrollView(
          child: GetBuilder(
            init:  OverviewController(),
            builder: (controller) {
              return 
           //  historyController.isloading==true?ShimmerOverview(): 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
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
                            image: const DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/ph.jpg")),
                            boxShadow:  [
                              BoxShadow(
                                color: ConstColor.greycolor,
                                blurRadius: 4,
                                offset: const Offset(2, 2), // Shadow position
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Iphone 13 Pro Max",
                              style: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Price Rs. 2,30,000",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Divider(),
                        Text(
                          "How Many tickets you want to buy?",
                          style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontSize: 16,
                             fontWeight: FontWeight.w600,),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            border: Border.all(color: Colors.black26),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      overviewController.price.toString(),
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.black,
                                        fontSize: 16,
                                         fontWeight: FontWeight.w600,),
                                  ),
                                  Text(
                                    "x",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                      overviewController.totaltickets.toString(),
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.black,
                                        fontSize: 16,
                                       fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    " =",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.black,
                                        fontSize: 16,
                                         fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    overviewController.totalprice.toString(),
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.black,
                                        fontSize: 16,
                                         fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      overviewController.totaltickets>1?
                                      overviewController.deccrementTickets():null;
                                    },
                                    child: Container(
                                      height: height * 0.1,
                                      width: width * 0.1,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                 
                                        border: Border.all(color: Colors.black26),
                                        color: ConstColor.darkbrownColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "-",
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      overviewController.incrementTickets();
                                    },
                                    child: Container(
                                      height: height * 0.1,
                                      width: width * 0.1,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.black26),
                                         color: ConstColor.darkbrownColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                         // height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            border: Border.all(color: Colors.black26),
                            color: Colors.grey.shade200,
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                              Text(
                              "PURCHASE DETAIL",
                              style: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                             ),
                             Divider(),

                             PurchaseDetail(purchaseText1: "Product Name",
                             purchaseText2: "Iphone 13 pro max",),
                               
                              Divider(),

                             PurchaseDetail(purchaseText1: "Purchaser Name",
                             purchaseText2: "Ahmad khan",),

                            Divider(),

                             PurchaseDetail(purchaseText1: "Purchaser Number",
                             purchaseText2: "03121234567",),
                                  

                                  


                            ]),
                            
                        
                          ),                    
                       ),
SizedBox(
                          height: height * 0.02,
                        ),
                      
                        Container(
                         // height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            border: Border.all(color: Colors.black26),
                            color: Colors.grey.shade200,
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 10,
                            right: 10,top: 15,bottom: 15),
                            child: Center(child: 
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "TOTAL AMOUNT",
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rs. "+overviewController.totalprice.toString(),
                                style: GoogleFonts.ubuntu(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                            ],
                        ),
                        ),
                          ),

                      ),

                      
                        CustomBuildButton(
                          buttonName: "Buy Now",
                          onPressed: () {
                            print("Buy");
                          },
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
