import 'package:firebase_app/locator.dart';
import 'package:firebase_app/router.dart';
import 'package:firebase_app/services/navigation_service.dart';
import 'package:firebase_app/views/UIs/sign_in.dart';
import 'package:firebase_app/views/UIs/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  finder();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignIn(),
      onGenerateRoute: generateRoute,
      navigatorKey: locator<NavigationService>().navigationKey,
    );
  }
}

