import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammynet/utils/textStyles.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Services Screen',
          style: AppTextStyles.body16,
        ),
      ),
    );
  }
}
