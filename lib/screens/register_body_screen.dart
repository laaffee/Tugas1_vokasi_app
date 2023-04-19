import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/screens/detail_screen.dart';

class RegisterBodyScreen extends StatelessWidget {
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
                child: Image.asset('assets/logo_vokasi-orange.png', scale: 2.0,),
              ),
              const SizedBox(height: 25,),
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
          'Daftar Akun',
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
        Text(
          "Alamat Email", 
          style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
              hintText: "Masukkan alamat email UNPAK", 
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
        SizedBox(height: 15),
        Text("Kata Sandi",
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Masukkan setidaknya 8 karakter",
            hintStyle: TextStyle(
                fontSize: 15, color: Color(0xff919191),),
            enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(
                    Radius.circular(50),),
                    borderSide: BorderSide(color: Color(0xffEE8301),),
                    ),
            fillColor: Colors.white,
          ),
          obscureText: true,
        ),
        SizedBox(height: 15),
        Text("Nomor HP",
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Masukkan nomor HP Anda",
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

        SizedBox(height: 25),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => DetailScreen(),));
            },
            child: Text("Lanjut",
            style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: Colors.white,
          ),
          ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffee8301),
                minimumSize: const Size(240.0, 40.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ), 
                ),
                textStyle: GoogleFonts.poppins(fontSize: 15.0),
              ),
            ),
      ],
    );
  }

}