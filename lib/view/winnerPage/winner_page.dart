import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/controller/history_controller.dart';
import '../../utils/themes.dart';
import '../widgets/bottom_navigationbar.dart';
import '../widgets/pages_appbar.dart';
import '../widgets/side_menu_bar.dart';

class WinnerPage extends StatelessWidget {
 WinnerPage({Key key}) : super(key: key);

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
                  text: "WINNER"),
             
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Padding(padding: EdgeInsets.symmetric(horizontal: width*0.04,
              vertical: height*0.06),
              child:
              
              // historyController.isloading==true?
              // ShimmerWinnerPage():
              
               Container(
                height: height*0.65,
                width: width,
                
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                     bottomRight: Radius.circular(80),
                      topLeft: Radius.circular(80),
                       topRight: Radius.circular(40),
                       
                  ),
                 gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                     ConstColor.brown1,
                     ConstColor.brown2
                 ]
                 ),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                     blurRadius: 12,
                     offset: Offset(4,8),
                     blurStyle: BlurStyle.inner
                  )
                  ]

                ),
                child: Column(
                  children: [
                     SizedBox(height: height*0.03,),
                    Text(
                                          "WINNER ANNOUNCED",
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: height*0.01,),
                                        Text(
                                          "CONGRATULATIONS",
                                          style: GoogleFonts.ubuntu(
                                              color: ConstColor.greenColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                          Text(
                                          "ON WINNING",
                                          style: GoogleFonts.ubuntu(
                                              color: ConstColor.greenColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: height*0.03,),
                                         Container(
                                    height: height * 0.3,
                                    width: width * 0.60,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/ph.jpg"),
                                        )),
                                  ),
                                   SizedBox(height: height*0.03,),
                                   Text(
                                          "IPHONE 13 PRO MAX",
                                          style: GoogleFonts.ubuntu(
                                              color: ConstColor.greenColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: height*0.02,),
                                        Text(
                                          "AHMAD KAHN",
                                          style: GoogleFonts.ubuntu(
                                              color: ConstColor.whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                         SizedBox(height: height*0.02,),
                                        Text(
                                          "KPK SWAT SHAMOZAI",
                                          style: GoogleFonts.ubuntu(
                                              color: ConstColor.whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                  ],
                ),
              ),)
      
             
             
            ],
          ),
        ),
        
       bottomNavigationBar: BottonBar()
      ),

    );
  }
}
