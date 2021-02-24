import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'jobs/job_page.dart';

import 'coolors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JobPage(),
      theme: ThemeData(
        accentColor: Coolors.white,
        primaryColor: Coolors.white,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
