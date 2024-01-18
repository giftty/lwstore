
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static const appName = 'dreacot_delivery_user';
  static const androidPackageID = 'com.dreacot.dreacot_delivery_user';
  static const iosBundleID = 'com.dreacot.dreacot_delivery_user';
  static const appStoreID = '';
  static const contactEmail = '';
  
  Map colorConstants={
   
   };
}

// class Applocalstorage{

//  final storage = const FlutterSecureStorage();

//   final String _keyUserName = 'username';
//   final String _keyPassWord = 'password';
//   final String _usertoken = 'usertoken';

//   Future setUserName(String username) async {
//     await storage.write(key: _keyUserName, value: username);
//   }
 
//   Future<String?> getUserName() async {
//     return await storage.read(key: _keyUserName);
//   }

//   Future setPassWord(String password) async {
//     await storage.write(key: _keyPassWord, value: password);
//   }

//   Future<String?> getPassWord() async {
//     return await storage.read(key: _keyPassWord);

//   }
//  Future setUserToken(String token) async {
//     await storage.write(key: _usertoken, value: token);
//   }
//   Future<String?> getUserToken() async {
//     return await storage.read(key: _usertoken);

//   }
// }
final  routes =<GetPage> [
 
 ];
class InitialBinding extends Bindings{
@override
  void dependencies() {
    
  }
}

