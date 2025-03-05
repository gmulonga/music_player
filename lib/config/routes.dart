import 'package:flutter/material.dart';
import 'package:music_player/presentation/screens/homePage.dart';
import 'package:music_player/presentation/screens/play_music_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String playMusic = '/play-music';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Homepage());
      case playMusic:
        return MaterialPageRoute(builder: (_) => PlayMusicPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
