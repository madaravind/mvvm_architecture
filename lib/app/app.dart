import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/theme/app_theme.dart';
import 'app_routes.dart';
import 'app_bindings.dart';


//Start Up
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(  //Provider State
      providers: AppBindings.providers, //List of AppBindings
      child: MaterialApp(
        theme: AppTheme.lightTheme, // Application Style
        debugShowCheckedModeBanner: false, //Remove the Debug Banner
        initialRoute: AppRoutes.login, //Specific Route
        routes: AppRoutes.routes, // List of Routes
      ),
    );
  }
}
