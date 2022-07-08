import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
color: Color.fromARGB(255, 148, 231, 151)
,      child: Center(

        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Location',
            style: GoogleFonts.montserratAlternates(
            fontSize: 80,
            fontWeight: FontWeight.bold
        
            ),
              
              ),
        )),
    );
  }
}
