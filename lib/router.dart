import 'package:firebase_app/constants/routes_constants.dart';
import 'package:firebase_app/views/UIs/sign_in.dart';
import 'package:firebase_app/views/UIs/sign_up.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case SignInRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: SignIn()
      );
    case SignUpRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: SignUp()
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('There is no route at ${settings.name}'),),
        )
      );
  }
}




PageRoute _getPageRoute({String routeName, Widget viewToShow}){
  return MaterialPageRoute(
    builder: (_) => viewToShow,
    settings: RouteSettings(name: routeName)
  );
}