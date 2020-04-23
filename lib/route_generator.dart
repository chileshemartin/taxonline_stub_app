import 'package:flutter/material.dart';
import 'package:taxonlinestubapp/education/articles.dart';
import 'package:taxonlinestubapp/education/video_screen.dart';
import 'eservices/screens/esevices_screen.dart';
import 'home_screen.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/videos':
        return MaterialPageRoute(builder: (_) => VideoListScreen());
      case '/articles':// give the destination screen a name
        return MaterialPageRoute(builder: (_) => ArticleListScreen());
      case '/eservices':
        return MaterialPageRoute(builder: (_) => EservicesScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

