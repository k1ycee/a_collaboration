import 'package:firebase_app/constants/routes_constants.dart';
import 'package:firebase_app/locator.dart';
import 'package:firebase_app/services/auth_service.dart';
import 'package:firebase_app/services/navigation_service.dart';
import 'package:firebase_app/view_models/base_model.dart';

class SignUpViewModel extends BaseModel{
  

  final FireAuth _auth = locator<FireAuth>();
  final NavigationService _nav = locator<NavigationService>();

  Future signUp({String email, String password, String username})async{
    setBusy(true);
    final result = _auth.signUp(email: email, password: password, username: username);
    setBusy(false);

    if(result is bool){
      if(result != null){
        _nav.navigateTo(SignInRoute);
      }
      else{
        print("Something went terribly wrong");
      }
    }
    else{
      print("This is even worse");
    }
  }
}