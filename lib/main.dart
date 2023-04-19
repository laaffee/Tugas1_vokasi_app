import 'package:flutter/material.dart';
//import 'package:vokasi_app/screens/splash_screen.dart';
import 'package:vokasi_app/screens/welcome_screen.dart';
//import 'package:vokasi_app/screens/profile_screen.dart';
//import 'package:vokasi_app/screens/register_screen.dart';
//import 'package:vokasi_app/screens/detail_screen.dart';
//import 'package:vokasi_app/screens/login_screen.dart';
//import 'package:vokasi_app/screens/forget_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      //home: SplashScreen(),
      home: WelcomeScreen(),
      //home: ProfileScreen(),
      //home: RegisterScreen(),
      //home: DetailScreen(),
      //home: LoginScreen(),
      //home:ForgetPasswordScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
