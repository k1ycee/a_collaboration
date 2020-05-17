import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/model/user_model.dart';
import 'package:firebase_app/model/user_post_model.dart';
import 'package:firebase_app/model/viewers_model.dart';
import 'package:flutter/services.dart';



class FireStore{
  final CollectionReference userRef = Firestore.instance.collection('User');
  final CollectionReference userPostRef = Firestore.instance.collection('UserPost');
  final CollectionReference viewerRef = Firestore.instance.collection('Viewer');

  final StreamController <List<UserPost>> _userPostStream = StreamController <List<UserPost>>.broadcast();
  final StreamController <List<Viewers>> _viewerStream = StreamController <List<Viewers>>.broadcast();

  
  Future createUser(User user)async{
    try{
      await userRef.document(user.id).setData(user.toJson());
    }
    catch(e){
      if(e is PlatformException){
        return e.message;
      }
      return e.toString();
    }
  }

  Future getUser(String uid)async{
    try{
      var user = await userRef.document(uid).get();
      return User.fromjson(user.data);
    }
    catch(e){
      if(e is PlatformException){
        return e.message;
      }
      return e.toString();
    }
  }


}