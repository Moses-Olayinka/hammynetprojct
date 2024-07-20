import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FoodDetailedScreen extends StatefulWidget {
  const FoodDetailedScreen({super.key});

  @override
  State<FoodDetailedScreen> createState() => _FoodDetailedScreenState();
}

class _FoodDetailedScreenState extends State<FoodDetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      ),
    ));
  }
}
