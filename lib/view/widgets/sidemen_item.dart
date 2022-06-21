import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/themes.dart';

class SideMenuItem extends StatelessWidget {
   SideMenuItem({this.icon,this.onpressesd,this.text});

  String icon;
  String text;
  VoidCallback onpressesd;

  @override
  Widget build(BuildContext context) {
 final height=MediaQuery.of(context).size.height;
 final width=MediaQuery.of(context).size.width;
    return  ListTile(
                       title:Row(
                          children: [
                            Tab(icon: ImageIcon(
                              
                              AssetImage(icon),
                              color: ConstColor.darkbrownColor,
                              ),),
                               SizedBox(width: width*0.05,),
                             Text(text,
                            style: GoogleFonts.ubuntu(
                                textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black,
                            ))),
                        
                          ],
                        ) ,
                       onTap:onpressesd
                      );
                    
  }
}