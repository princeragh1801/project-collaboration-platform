import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_collaboration_platform/screens/add_project_screen.dart';
import 'package:project_collaboration_platform/screens/project_detail_screen.dart';
import 'package:project_collaboration_platform/utils/colors.dart';
import 'package:project_collaboration_platform/utils/utils.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  Widget showProjectCard(String projectTitle, String projectCategory) {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      projectTitle,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      projectCategory,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prince'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(padding: const EdgeInsets.all(10), children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person_2_outlined),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'username',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
              onPressed: () {},
              child: const Text('Edit profile')),
          Utils().spacer(),
          Text(
            'Projects',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
            ),
          ),
          showProjectCard('trendify-news-app', 'App'),
          showProjectCard('we-chat', 'App'),
          showProjectCard('expense-tracker', 'App'),
          showProjectCard('gym-web', 'Web-Application'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddProjectScreen(),));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
