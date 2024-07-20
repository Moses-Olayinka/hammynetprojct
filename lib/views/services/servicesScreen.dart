import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammynet/utils/colors.dart';
import 'package:hammynet/utils/textStyles.dart';
import 'package:sizer/sizer.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  TextEditingController searchServiceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(
              100.w,
              12.h,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              child: TextField(
                controller: searchServiceController,
                cursorColor: black,
                style: AppTextStyles.textFieldTextStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 2.w),
                  hintText: 'Search Services',
                  hintStyle: AppTextStyles.textFieldHintTextStyle,
                  // filled: true,
                  // fillColor: greyShade3,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: grey,
                    ),
                  ),
                ),
              ),
            )),
        body: Center(
          child: Text(
            'Services Screen',
            style: AppTextStyles.body16,
          ),
        ),
      ),
    );
  }
}
