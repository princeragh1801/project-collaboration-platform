
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project_collaboration_platform/auth/login.dart';
import 'package:project_collaboration_platform/utils/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      childWidget:const SizedBox(
        height: 200,
        width: 200,
        child: Logo(),),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const Login(),
    ));
  }
}
