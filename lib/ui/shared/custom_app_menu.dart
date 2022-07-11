import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/ui/shared/custom_menu_item.dart';

import '../../providers/page_providers.dart';

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
    final pageProvider = Provider.of<PageProvider>(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () => iconChange(),
          child: Container(
              height: isOpen ? 308 : 50,
              width: 150,
              color: Colors.black,
              child: Column(
                children: [
                  _MenuTitle(isOpen: isOpen),
                  if (isOpen) ...[
                    CustomMenuItem(text: 'Home', onPressed: ()=> pageProvider.goTo(0)),
                    CustomMenuItem(text: 'About', onPressed: ()=> pageProvider.goTo(1)),
                    CustomMenuItem(text: 'Pricing', onPressed: ()=> pageProvider.goTo(2)),
                    CustomMenuItem(text: 'Contact', onPressed: ()=> pageProvider.goTo(3)),
                    CustomMenuItem(text: 'Location', onPressed: ()=> pageProvider.goTo(4)),
                    SizedBox(height: 8)
                  ]
                ],
              ))),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required this.isOpen,
  }) : super(key: key);

  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
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
    );
  }
}
