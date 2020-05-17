import 'package:firebase_app/constants/routes_constants.dart';
import 'package:firebase_app/locator.dart';
import 'package:firebase_app/services/navigation_service.dart';
import 'package:firebase_app/view_models/sign_in_view_model.dart';
import 'package:firebase_app/views/widgets/button.dart';
import 'package:firebase_app/views/widgets/input_decoration.dart';
import 'package:firebase_app/views/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class SignIn extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final NavigationService nav = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SignInViewModel>.withConsumer(
      viewModelBuilder: () => SignInViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[400],
          body:ListView(
            children: <Widget>[
              SizedBox(height: 150,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Sign In', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Container(height:48,child: TextField(controller: email, decoration: authinput.copyWith(labelText: 'Email'),)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Container(height:48,child: TextField(controller: password, decoration: authinput.copyWith(labelText: 'Password'),obscureText: true,),),
              ),
              SizedBox(height: 50,),
              CustomOutButton(label: Text('SignIn'), onPressed: (){
                model.signIn(email: email.text, password: password.text);
              }, color: Colors.grey[600],),
              SizedBox(height: 30,),
              Center(child: MeRich(onPressed: (){
                nav.navigateTo(SignUpRoute);
              }, word: Text('Don\'t have an account? Sign up', style: TextStyle(decoration: TextDecoration.underline),),))
            ],
          )
        ),
      ),
    );
  }
}