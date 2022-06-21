import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/themes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return
     Stack(
                children: [
                  Container(
                    height: height*0.23,
                    width: width,
                    decoration: const  BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(200),
                          bottomLeft: Radius.circular(10)),
                       
                      color:ConstColor.lightbrownColor, 
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height*0.21,
                    width: width,
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(200),
                          bottomLeft: Radius.circular(10)),
                           gradient:LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          
                               ConstColor.darkbrownColor,
                               ConstColor.darklightbrownColor,

                          ]),
                      
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: height / 4,
                        width: width / 3,
                      ),
                    ),
                  )
                ],
              );

    
  }
}