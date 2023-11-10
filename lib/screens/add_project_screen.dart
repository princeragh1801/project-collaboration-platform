import 'package:flutter/material.dart';
import 'package:project_collaboration_platform/utils/colors.dart';
import 'package:project_collaboration_platform/utils/round_button.dart';
import 'package:project_collaboration_platform/utils/utils.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload a new project')),
      body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Form(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title',
                  prefixIcon: Icon(
                    Icons.title_outlined,
                    color: primaryColor,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              Utils().spacer(),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Description',
                  prefixIcon: Icon(
                    Icons.description_outlined,
                    color: primaryColor,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              Utils().spacer(),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Category',
                  prefixIcon: Icon(
                    Icons.category_outlined,
                    color: primaryColor,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              Utils().spacer(),
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor),
                      onPressed: () {},
                      child: const Text('Add files')),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('No files uploaded yet')
                ],
              ),
              Utils().spacer(),
              RoundButton(
                  title: 'Upload Project',
                  onTap: () {
                    Navigator.pop(context);
                  })
            ]),
          )),
    );
  }
}
