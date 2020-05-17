import 'package:firebase_app/constants/routes_constants.dart';
import 'package:firebase_app/locator.dart';
import 'package:firebase_app/services/auth_service.dart';
import 'package:firebase_app/services/firestore_service.dart';
import 'package:firebase_app/services/navigation_service.dart';
import 'package:firebase_app/view_models/base_model.dart';

class SignInViewModel extends BaseModel{
  
  final FireAuth _auth = locator<FireAuth>();
  final NavigationService _nav = locator<NavigationService>();

  Future signIn({String email, String password})async{
    setBusy(true);
    final result = await _auth.signIn(email: email, password: password);
    setBusy(false);
    if(result is bool){
      if(result){
         _nav.navigateTo(SignUpRoute);
      }
     else{
       print("Something went wrong chief");
     }
    }
    else{
      print("Awkward!!!");
    }
  } 
}