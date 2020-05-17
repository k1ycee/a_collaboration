import 'package:firebase_app/services/auth_service.dart';
import 'package:firebase_app/services/firestore_service.dart';
import 'package:firebase_app/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;


void finder(){
  locator.registerLazySingleton(() => FireAuth());
  locator.registerLazySingleton(() => FireStore());
  locator.registerLazySingleton(() => NavigationService());
}