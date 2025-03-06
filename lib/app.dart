import 'package:flutter/material.dart';
import 'package:music_player/config/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRoutes.home,
    );
  }
}
