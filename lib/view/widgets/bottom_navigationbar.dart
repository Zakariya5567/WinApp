import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controller/bottom_navigation_controller.dart';
import '../../controller/history_controller.dart';
import '../../utils/images.dart';
import '../../utils/themes.dart';
import '../homePage/home_page.dart';
import '../profilePage/profile_page.dart';

import '../historyPage/winner_history.dart';
import '../winnerPage/winner_page.dart';

class BottonBar extends StatelessWidget {
   BottonBar({Key key}) : super(key: key);

   BottomNavigationController bottomNavigationController=Get.put(BottomNavigationController());
   HistoryController historyController=Get.put(HistoryController());
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: MediaQuery.of(context).size.height*0.08,
    backgroundColor: Colors.transparent,
    buttonBackgroundColor: ConstColor.darkbrownColor,
    color: ConstColor.darkbrownColor,
    animationDuration: const Duration(milliseconds: 200),
    animationCurve: Curves.ease,
    index:bottomNavigationController.currentPage ,
    items: [

    // home
  
         ImageIcon( 
           AssetImage(ConstImage.homefillimage)
           ,color:ConstColor.whiteColor),

     
   // winner

        ImageIcon(
     AssetImage(ConstImage.winnerimage)
     ,color:ConstColor.whiteColor),

  //winner history

          ImageIcon(
           AssetImage(ConstImage.winnerHistoryimage)
           ,color:ConstColor.whiteColor),   
    

 
   // profile
      
        ImageIcon(
           AssetImage(ConstImage.profilefillimage)
           ,color:ConstColor.whiteColor),

           // profile
      

       

    ],
    onTap: (index) {
      bottomNavigationController.setCurrentPage(index);
      if(index==0){
        Get.to(HomePage());
      }
      else if(index==1){
        Get.to(WinnerPage());
      }
       else if(index==2){
        historyController.setloading(true);

        Get.to(WinnerHistory());
         historyController.setloading(true);
      }else if(index==3){
        Get.to(ProfilePage());
      }
    },
  );
  }
}