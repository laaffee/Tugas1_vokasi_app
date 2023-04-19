import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/screens/profile_screen.dart';

class DetailBodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(child: Container(
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
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
                  'Detail Akun',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff484848),
            ),
          ),
          const SizedBox(height: 15,),
      ],
    );
  }


  _inputField(context) {
    String? _programVal;
    List _programStudi = [
      'Ilmu Komputer', 'Matematika', 'Biologi', 'Kimia', 'Farmasi',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Nama",
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
              hintText: "Masukkan nama lengkap Anda",
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
        Text("Nama Panggilan",
         style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Masukkan Nama Panggilan",
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
        Text("NPM",
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Masukkan NPM Anda",
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
         Text("Pilih Program Studi",
        style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
          
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
             border: Border.all(color: Color(0xffEE8301),),
             borderRadius: BorderRadius.circular(50),
            ),
          
 
          child: DropdownButton(
            hint: Text("  Pilih Program Studi",
            style: TextStyle(
                fontSize: 15, color: Color(0xff919191),),
                ),
                
            dropdownColor: Colors.white,
            
            isExpanded: true,
            underline: SizedBox(),
            value: _programVal,
            onChanged: (value) {
              setState(() {
                _programVal = value as String?;
        
              });
              
            },
            items: _programStudi.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        
        SizedBox(height: 15),
        Text("Alamat rumah/kost",
         style: GoogleFonts.poppins(
            fontSize: 15.0,
            color: const Color(0xff484848),
          ),
          ),
        SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.multiline,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "Masukkan alamat rumah/kost Anda",
             hintStyle: TextStyle(
                fontSize: 15, color: Color(0xff919191),),
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(
                    Radius.circular(25),),
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
                  MaterialPageRoute(builder: (context) => ProfileScreen(),));
              },
              child: Text('Daftar',
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
  
  void setState(Null Function() param0) {}

}
