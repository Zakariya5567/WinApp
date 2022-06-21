import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/controller/history_controller.dart';

import '../../utils/themes.dart';
import '../overviewPage/overview_page.dart';
import '../widgets/bottom_navigationbar.dart';
import '../widgets/custombuildButton.dart';
import '../widgets/pages_appbar.dart';
import '../widgets/side_menu_bar.dart';

class HomePage extends StatelessWidget {
 HomePage({Key key}) : super(key: key);

 final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();
  // GlobalKey bottomNavigationKey = GlobalKey();

  HistoryController historyController=Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ConstColor.whiteColor,
       key: scaffoldKey,
       drawer: SideMenuBar(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: height*0.09,
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace:   PagesAppbar(
                  icon: Icons.menu,
                  onPressed: () {
                    print("Menu button");
                    scaffoldKey.currentState.openDrawer();
                  },
                  text: "CHANCE TO WIN"),
             
        ),
        body: SingleChildScrollView(
          child: 
          // historyController.isloading==true?
          // ShimmerHomePage():
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      
             
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03,
                vertical: height*0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "JUST SPEND RS.""10" 
                      " AND WIN THE BELOW ITEM.",
                      style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
    

  SizedBox(
    height: height*0.06,
    child: DefaultTextStyle(
     style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1,
                          letterSpacing: 1,
                        ),
    child: AnimatedTextKit(
     repeatForever: true, 

      animatedTexts: [
        TyperAnimatedText( 'Simply click on buy button,try your luck and get a chance to win')
       ],
      isRepeatingAnimation: true,
      onTap: () {
      },
    ),
  ),
  ),
                   
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.6,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(20)),
                        color: ConstColor.darklightbrownColor,
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            offset: Offset(2, 4), // Shadow position
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Total particapant: 43213",
                          style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            wordSpacing: 1,
                            letterSpacing: 1,
                          ),
                        ),
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
                        image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/images/ph.jpg")),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3,
                            offset: Offset(2, 4), // Shadow position
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Iphone 13 Pro Max",
                      style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Price Rs. 2,30,000",
                      style: GoogleFonts.ubuntu(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    
                    CustomBuildButton(
                      buttonName: "Buy for Rs. ""10",
                      onPressed: () {
                        print("Buy");
                        Get.to(OverviewPage());
                      },
                    )
                    
                  ],
                ),
              )
            ],
          ),
        ),
        
       bottomNavigationBar: BottonBar()
      ),

    );
  }
}
