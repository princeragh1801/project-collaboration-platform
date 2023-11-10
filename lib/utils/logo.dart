import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircleAvatar(
      radius: 50,
      child: Text(
        '.dot',
        style: GoogleFonts.russoOne(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
