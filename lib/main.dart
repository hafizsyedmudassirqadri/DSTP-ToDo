import 'package:flutter/material.dart';

// import 'package:to_do_app/view/login_page.dart';
import 'package:to_do_app/view/splash_page.dart';
// import 'package:to_do_app/view/profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: LoginScreenUi(),
      // home: ProfileScreenUi(),
      home: SplashScreenUi(),
     
    );
  }
}







