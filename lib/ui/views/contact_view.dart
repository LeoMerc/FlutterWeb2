import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
color: Color.fromARGB(255, 178, 83, 194)
,      child: Center(

        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Contact',
            style: GoogleFonts.montserratAlternates(
            fontSize: 80,
            fontWeight: FontWeight.bold
        
            ),
              
              ),
        )),
    );
  }
}
