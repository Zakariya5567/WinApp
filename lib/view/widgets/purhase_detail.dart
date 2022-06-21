import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchaseDetail extends StatelessWidget {
   PurchaseDetail({this.purchaseText1,this.purchaseText2}) ;

  String purchaseText1;
  String purchaseText2;

  @override
  Widget build(BuildContext context) {

    return  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         
                        Text(
                          purchaseText1,
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          purchaseText2,
                          style: GoogleFonts.ubuntu(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                      ],
                    );
                   
    
  }
}