import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/themes.dart';

class PagesAppbar extends StatelessWidget {
  PagesAppbar({this.icon, this.onPressed, this.text});

  IconData icon;
  VoidCallback onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return 
    Stack(
      children: [
         Container(
      height: height * 0.09,
      width: width,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(200), bottomLeft: Radius.circular(10)),
        color: ConstColor.lightbrownColor,
        boxShadow:const  [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
   )
 ,
  Container(
      height: height * 0.08,
      width: width,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(200), bottomLeft: Radius.circular(10)),
        color: ConstColor.darklightbrownColor,
        gradient:LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          
                               ConstColor.darkbrownColor,
                               ConstColor.darklightbrownColor,

                          ]),
      
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
              color: Colors.white,
              iconSize: 30,
            ),
            Text(
              text.toString(),
              style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: width * 0.2,
            )
          ],
        ),
      ),
    )
 
      ],
    );
  }
}
