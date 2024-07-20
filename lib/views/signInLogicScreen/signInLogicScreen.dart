import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammynet/controller/services/authServices/mobileAuthServices.dart';

class SignInLoginScreen extends StatefulWidget {
  const SignInLoginScreen({super.key});

  @override
  State<SignInLoginScreen> createState() => _SignInLoginScreenState();
}

class _SignInLoginScreenState extends State<SignInLoginScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MobileAuthServices.checkAuthentication(context);
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        image: AssetImage(
          'assets/images/splashScreenImage/SplashScreen.png',
        ),
      ),
    );
  }
}
