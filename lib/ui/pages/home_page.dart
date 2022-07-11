import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_providers.dart';
import 'package:vertical_landing_page/ui/shared/custom_app_menu.dart';
import 'package:vertical_landing_page/ui/views/about_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/location_view.dart';
import 'package:vertical_landing_page/ui/views/pricing_view.dart';

import '../views/home_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    BoxDecoration boxdeco = BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.pink, Colors.purple
        ], 
        begin: Alignment.topCenter,
        end:  Alignment.bottomCenter,
        stops: [0.5, 0.5]
        ),
    );


    return Scaffold(
        body: Container(
          decoration: boxdeco,
      child: Stack(
        children: [
          _HomeBody(),
          Positioned(
              right: 20,
              top: 20,
              child: CustomAppMenu(),
              )
        ],
      ),
    ));
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen:false);
    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [HomeView(),
      AboutView(),
      PricingView(),
      ContactView(),
      LocationView(),
      ],
    );
  }
}
