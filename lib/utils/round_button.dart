import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_collaboration_platform/main.dart';
import 'package:project_collaboration_platform/utils/colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: size.width*.9,
        decoration: const BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Center(child: Text(title, textAlign: TextAlign.center, style: GoogleFonts.russoOne(fontSize: 15, fontWeight: FontWeight.w300),)),
      ),
    );
  }
}
