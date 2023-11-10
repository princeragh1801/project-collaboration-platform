import 'package:flutter/material.dart';
import 'package:project_collaboration_platform/screens/home_screen.dart';
import 'package:project_collaboration_platform/utils/logo.dart';
import 'package:project_collaboration_platform/utils/round_button.dart';
import 'package:project_collaboration_platform/utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0).copyWith(left: 20, right: 20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, children: [
            const Logo(),
            
            Utils().spacer(),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Full name',
                prefixIcon: Icon(Icons.person_2_outlined),
                // border: InputBorder.none
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                // border: InputBorder.none
              ),
            ),
            
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'College',
                prefixIcon: Icon(Icons.school_outlined),
                // border: InputBorder.none
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                // border: OutlineInputBorder()
              ),
            ),
            Utils().spacer(),
            RoundButton(title: 'SignUp', onTap: () {
              Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
            }),
            // spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text('Already have an account?'),
              TextButton(onPressed: (){}, child: const Text('Login')),
            ],)
          ]),
        ),
      ),
    );
  }
}
