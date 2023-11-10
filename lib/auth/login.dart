import 'package:flutter/material.dart';
import 'package:project_collaboration_platform/auth/signup.dart';
import 'package:project_collaboration_platform/screens/home_screen.dart';
import 'package:project_collaboration_platform/utils/logo.dart';
import 'package:project_collaboration_platform/utils/round_button.dart';
import 'package:project_collaboration_platform/utils/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Logo(),

                Utils().spacer(),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email or username',
                    prefixIcon: Icon(Icons.email_outlined),
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
                RoundButton(
                    title: 'Login',
                    onTap: () {
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
                    const Text('Don\'t have an account?'),
                    TextButton(
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            )),
                        child: const Text('Create new one')),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
