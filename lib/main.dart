import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'products/product_page.dart';

import 'coolors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
      theme: ThemeData(
        accentColor: Coolors.white,
        primaryColor: Coolors.white,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
