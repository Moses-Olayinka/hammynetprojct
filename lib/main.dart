import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hammynet/controller/provider/authProvider/authProvider.dart';
import 'package:hammynet/views/signInLogicScreen/signInLogicScreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );

  runApp(const Hammynet());
}

class Hammynet extends StatelessWidget {
  const Hammynet({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<MobileAuthProvider>(
            create: (_) => MobileAuthProvider(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Hammynet',
            theme: ThemeData(),
            home: const SignInLoginScreen()),
      );
    });
  }
}
