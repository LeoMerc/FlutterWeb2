import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppMenu extends StatefulWidget {
  CustomAppMenu({Key? key}) : super(key: key);

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu> {
  bool isOpen = false;
  void iconChange() {
    return setState(() {
      isOpen = !isOpen; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => iconChange(),
        child: Container(
          width: 150,
          height: 50,
          color: Colors.black,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Menu',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                Padding(padding: EdgeInsets.only(left: 5)),
                Icon(
                  isOpen ? Icons.menu_open_rounded : Icons.menu,
                  color: Colors.white,
                )
              ]),
        ),
      ),
    );
  }
}
