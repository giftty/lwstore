import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lwstore/views/home.dart';


import 'app/config.dart';
void main() {
   WidgetsFlutterBinding.ensureInitialized();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
     title: AppConfig.appName,
     theme: ThemeData(fontFamily: 'poppins'),
     initialBinding: InitialBinding(),
     //getPages: routes,
     //initialRoute: routes.first.name,
     home:Home()
    );
  }
}

