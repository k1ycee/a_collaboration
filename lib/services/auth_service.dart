import 'package:firebase_app/locator.dart';
import 'package:firebase_app/model/user_model.dart';
import 'package:firebase_app/services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FireAuth{

  // instantiating the classes i'll be using for auth  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _gAuth = GoogleSignIn();
  // Dependecy injection here :)
  FireStore store = locator<FireStore>();




  // Firebase auth sign-up

  Future signUp({String email, String password, String username})async{
    AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;

    await store.createUser(
      User(
        id: result.user.uid,
        username: username)
    );
    return user != null;
  }

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