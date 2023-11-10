import 'package:flutter/material.dart';
import 'package:project_collaboration_platform/main.dart';
import 'package:project_collaboration_platform/utils/colors.dart';
import 'package:project_collaboration_platform/utils/utils.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({super.key});

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  Widget _buttonBuilder(String title) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: primaryColor),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project-Title'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.all(10),
                
                children: [
                  _buttonBuilder('Description'),
                  const  SizedBox(width: 10,),
                  _buttonBuilder('Documentation'),
                  const  SizedBox(width: 10,),
                  _buttonBuilder('Project Files'),
                  const  SizedBox(width: 10,),
                  _buttonBuilder('Project Report'),
                  const  SizedBox(width: 10,),
                  _buttonBuilder('Discuss'),
                ],
              ),
            ),
            Utils().spacer(),
            Container(
                margin: const EdgeInsets.all(10),
                width: size.width * .8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Right now, in Indian colleges and universities, when students do cool projects for their classes, it is like they are working in their own little bubbles. They create awesome stuff, but there is no easy way to show it to other students or learn from their work',
                      style: TextStyle(fontSize: 15),
                    ),
                    Utils().spacer(),
                    const Text(
                      'Imagine if you made an amazing drawing or built a fantastic model for a school project, but no one else in your school got to see it. That is a bit like the problem we are talking about',
                      style: TextStyle(fontSize: 15),
                    ),
                    Utils().spacer(),
                    const Text(
                      'Also, sometimes, people might try to copy someone else work and say it is their own. That is not fair, right? We need a way to check and stop that from happening.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
