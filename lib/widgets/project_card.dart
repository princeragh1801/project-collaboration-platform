import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_collaboration_platform/main.dart';
import 'package:project_collaboration_platform/screens/project_detail_screen.dart';
import 'package:project_collaboration_platform/utils/utils.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.projectTitle, required this.projectCategory, required this.username});
  final String projectTitle;
  final String projectCategory;
  final String username;
  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProjectDetailScreen(),
            ));
      },
      child: Card(
        elevation: 5,
        
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Container(
          height: size.height*.2,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${widget.username} /',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          widget.projectTitle,
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      widget.projectCategory,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    // Text('Project-Category'),
                  ]),
              const Text('Basic description of the project'),
              Utils().spacer(),
              const Text('Published on  28-07-2023')
            ],
          ),
        ),
      ),
    );
  }
}
