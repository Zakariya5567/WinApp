import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/themes.dart';

class CustomBuildButton extends StatelessWidget {

  CustomBuildButton({this.buttonName,this.onPressed});

  String buttonName;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
     return  Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: width*0.05, vertical:height*0.03),
                child: InkWell(
                  onTap: onPressed,
                  child: Container(
                    decoration:const   BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(20),
                      ),
                       gradient:LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          
                               ConstColor.darkbrownColor,
                               ConstColor.darklightbrownColor,

                          ]),
                   
                       boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:  Center(
                      child: Text(
                        buttonName,
                style:const TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              );
             
  }
}