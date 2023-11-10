import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_collaboration_platform/main.dart';
import 'package:project_collaboration_platform/screens/user_profile_screen.dart';
import 'package:project_collaboration_platform/utils/colors.dart';
import 'package:project_collaboration_platform/widgets/project_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  Widget drawerButton(String title) {
    return TextButton(
        onPressed: () {
          if(title == 'Your profile'){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const UserProfileScreen(),));
          }
        },
        child: Text(
          title,
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w500),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('.dot', style: GoogleFonts.russoOne(fontSize: 20),),
        centerTitle: true,
        actions: [
          CircleAvatar(
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserProfileScreen(),
                        ));
                  },
                  icon: const Icon(Icons.person_2_outlined))),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Container(

          margin:
              EdgeInsets.only(top: size.height * .1, bottom: size.height * .5),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Drawer(
            width: size.width * .6,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(child: Icon(Icons.person_2_outlined)),
                  ),
                  drawerButton('Your profile'),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: buttonColor), onPressed: (){}, child: const Text('Logout'))
                ],
              ),
            ),
          )),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(physics: const BouncingScrollPhysics(), children: const[
          ProjectCard(projectTitle: 'trendify-news-app', projectCategory: 'App', username: 'abcd1801'),
          ProjectCard(projectTitle: 'Expense-Tracker', projectCategory: 'Website', username: 'cdef1801'),
          ProjectCard(projectTitle: 'we-chat', projectCategory: 'App', username: 'xyz1801'),
          ProjectCard(projectTitle: 'gym-web', projectCategory: 'Website', username: 'prince1801'),
          ProjectCard(projectTitle: 'saarthi', projectCategory: 'App', username: 'mayank2003'),
          ProjectCard(projectTitle: 'github', projectCategory: 'App', username: 'username1801'),
          ProjectCard(projectTitle: 'healthy', projectCategory: 'Website', username: 'true123'),
          
        ]),
      ),
    );
  }
}
