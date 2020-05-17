import 'package:firebase_app/view_models/sign_up_view_model.dart';
import 'package:firebase_app/views/widgets/button.dart';
import 'package:firebase_app/views/widgets/input_decoration.dart';
import 'package:firebase_app/views/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class SignUp extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SignUpViewModel>.withConsumer(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[400],
          body:ListView(
            children: <Widget>[
              SizedBox(height: 130,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Sign Up', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Container(height:48,child: TextField(controller: email, decoration: authinput.copyWith(hintText: 'Username'),)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Container(height:48,child: TextField(controller: email, decoration: authinput.copyWith(hintText: 'Email'),)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Container(height:48,child: TextField(controller: email, decoration: authinput.copyWith(hintText: 'Password'), obscureText: true,)),
              ),
              SizedBox(height: 50,),
              CustomOutButton(label: Text('SignUp'), onPressed: (){}, color: Colors.white,),
              SizedBox(height: 10,),
              Center(child: MeRich(onPressed: (){}, word: Text('Already have an account! Sign in'),))
            ],
          )
        ),
      ),
    );
  }
}