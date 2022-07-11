import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_providers.dart';
import 'package:vertical_landing_page/router/router.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => PageProvider() ),
    ],
    child: MyApp(),
    );
  }
}

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
      final pageProvider = Provider.of<PageProvider>(context, listen:false);

    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'home',
      onGenerateRoute: Flurorouter.router.generator,
      initialRoute: '/home',

      
    );
  }
}