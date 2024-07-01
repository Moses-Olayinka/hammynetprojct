import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hammynet/firebase_options.dart';
// import 'package:hammynet/views/authScreens/otpScreen.dart';
//import 'package:hammynet/views/authScreens/mobileLoginScreen.dart';
// import 'package:hammynet/views/authScreens/otpScreen.dart';
import 'package:sizer/sizer.dart';

import 'views/bottomNavigationBar/bottonNavigationBar.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Hammynet());
}

class Hammynet extends StatelessWidget {
  const Hammynet({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: const BottomNavBar());
    });
  }
}
