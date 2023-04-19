import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordBodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/logo_vokasi-orange.png', scale: 2,),
              ),
              const SizedBox(height: 30,),
              _header(context),
              _inputField(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          'Pemulihan Kata Sandi',
          textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xff484848),
            ),
          ),
          const SizedBox(height: 30,),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Alamat Email",
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),),
        SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
              hintText: "Masukkan alamat email akun Anda",
               hintStyle: TextStyle(
                fontSize: 15, color: Color(0xff919191),),
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(
                    Radius.circular(50),),
                    borderSide: BorderSide(color: Color(0xffEE8301),),
                    ),
              fillColor: Colors.white,
              ),
        ),
        
        SizedBox(height: 20),
        Text("Kata sandi baru akan dikirimkan ke alamat email Anda", style: TextStyle(color: Colors.grey),),
      
        SizedBox(height: 30),
        ElevatedButton(
              onPressed: () {},
              child: Text('Kirim',
               style: GoogleFonts.poppins(
                fontSize: 14.0,
                color: Colors.white,
          ),),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffee8301),
                minimumSize: const Size(240.0, 40.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 14.0),
              ),
            ),
      ],
    );
  }
}
