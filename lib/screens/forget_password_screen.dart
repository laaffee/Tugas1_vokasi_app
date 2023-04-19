import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/screens/forget_password_body_screen.dart';
import 'package:vokasi_app/screens/login_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: GoogleFonts.poppins(
            color: const Color(0x95484848), 
            fontWeight: FontWeight.w500, 
          ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back),
         onPressed: () {
                Navigator.pop(
                  context, 
                  MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
        ),
       
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ForgetPasswordBodyScreen(),
    );
  }
}
