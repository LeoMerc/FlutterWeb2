import 'package:flutter/material.dart';
import 'package:vertical_landing_page/router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
super.initState();
Flurorouter.configureRoutes();
  }

  Widget build(BuildContext context) {

    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Material App',
      onGenerateRoute: Flurorouter.router.generator,
      initialRoute: '/home',

      
    );
  }
}