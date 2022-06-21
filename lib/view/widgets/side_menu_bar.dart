import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winapp/view/widgets/sidemen_item.dart';

import '../../utils/images.dart';
import '../../utils/themes.dart';
import '../profilePage/profile_page.dart';

import '../historyPage/winner_history.dart';
import '../winnerPage/winner_page.dart';
import '../historyPage/your_history.dart';
class SideMenuBar extends StatelessWidget {
  SideMenuBar({Key key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
     final width=MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
          
          children: [
            
                         Container(
                         
                      decoration:BoxDecoration(
                         gradient:LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          
                               ConstColor.darkbrownColor,
                               ConstColor.darklightbrownColor,

                          ]),
                      ),

                  
                          child: 
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                
                                // Icon(buttonIcon.icon,color: Colors.deepOrangeAccent,),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.13,
                                  width: MediaQuery.of(context).size.width*0.28,
                                  
                                  decoration:const BoxDecoration(
                                    color: ConstColor.whiteColor,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: 
                                   
                                      AssetImage("")
                                     
                                    )
                                    
                                  ),
                                  child:const Icon(Icons.camera_alt_outlined),
                                
                                ),
                               const  SizedBox(
                                  width: 15,
                                ),
                               
                                    Text(
                                   "Name",
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
        
            Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                     
                     // profile button

                      SideMenuItem(icon: ConstImage.userimage,text: "PROFILE",onpressesd: (){
                        navigator.pop();
                        Get.to(ProfilePage());
                      }),
                    const Divider(height: 1,),
                       
                     // winner button

               SideMenuItem(icon: ConstImage.winnerimage,text: "WINNER",onpressesd: (){
                        navigator.pop();
                        Get.to(WinnerPage());
                      }),
                    const Divider(height: 1,),

                      
                    //  // winner history button

                     SideMenuItem(icon: ConstImage.winnerHistoryimage,text: "WINNER HISTORY",onpressesd: (){
                        navigator.pop();
                        Get.to(WinnerHistory());
                      }),
                    const Divider(height: 1,),

                      
                    // your history button

                     SideMenuItem(icon: ConstImage.yourhistoryimage,text: "YOUR HISTORY",onpressesd: (){
                        navigator.pop();
                        Get.to(YourHistory());
                      }),
                    const Divider(height: 1,),


                  // share button  

                     SideMenuItem(icon: ConstImage.shareimage,text: "SHARE",onpressesd: (){
                        navigator.pop();
                      }),
                    const Divider(height: 1,),
                       
                   

                    
                      
                    //  // Rate button

                    SideMenuItem(icon: ConstImage.rateimage,text: "RATE",onpressesd: (){
                        navigator.pop();
                      }),
                    const Divider(height: 1,),
                   
                     

                    //  // logout button

                    SideMenuItem(icon: ConstImage.logoutimage,text: "LOG OUT",onpressesd: (){
                        navigator.pop();
                      }),
                    const Divider(height: 1,),
                  
                      
                    ],
                  ),
                ))
          ]),
    );
  }
}
