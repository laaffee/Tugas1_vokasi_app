import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/screens/detail_body_screen.dart';
import 'package:vokasi_app/screens/register_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
         onPressed: () {
                Navigator.pop(
                  context, 
                  MaterialPageRoute(builder: (context) => RegisterScreen(),));
              },
        ),

        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: DetailBodyScreen(),
    );
  }
}
