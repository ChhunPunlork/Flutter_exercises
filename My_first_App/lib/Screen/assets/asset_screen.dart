import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssetScreen extends StatelessWidget {
  const AssetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //load from asset
          Image.asset('assets/images/background.jpg'),
          Text("ទេសភាពស្រស់ស្អាត", style: TextStyle(fontSize: 30, fontFamily: "Battambang"),),

          //load font from package
          Text(
            "សួរស្ដីអ្មកទាំងអស់គ្នាថ្ងៃនេះខ្ញុំសប្បាយយចិត្តណាស់",
            style: GoogleFonts.battambang(),
          ),
        ],
      ),
    );
  }
}
