import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(194, 244, 133, 170),
      child: Center(

        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'HomeView',
            style: GoogleFonts.montserratAlternates(
            fontSize: 80,
            fontWeight: FontWeight.bold
        
            ),
              
              ),
        )),
    );
  }
}
