import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FireAuth{
  // instantiating the classes i'll be using for auth  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _gAuth = GoogleSignIn();



  // Firebase auth sign-in  
  Future signIn({String email, String password})async{
    AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: email);
    FirebaseUser user = result.user;
    return user != null;
  }

  // Google signin 
  Future googSignin()async{
    try{
      GoogleSignInAccount initial = await _gAuth.signIn();
      GoogleSignInAuthentication authenticate = await initial.authentication;
      AuthCredential accredit = GoogleAuthProvider.getCredential(
        idToken: authenticate.idToken, 
        accessToken: authenticate.accessToken);
      AuthResult result = await _auth.signInWithCredential(accredit);
      FirebaseUser user =  result.user;
      return user != null;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  // Siging out right now 
  Future signout()async{
     try{
      _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}