import 'package:flutter/material.dart';
import 'package:hammynet/utils/colors.dart';
import 'package:hammynet/utils/textStyles.dart';
import 'package:sizer/sizer.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  List categories = [
    ['assets/images/categories/washing.png', 'Washing'],
    ['assets/images/categories/Ironing.png', 'Ironing'],
    ['assets/images/categories/fastwash.png', 'Fast wash'],
    ['assets/images/categories/dryclean.png', 'Dry Clean'],
    ['assets/images/categories/stain.png', 'Stains'],
    ['assets/images/categories/linearcare.png', 'Linear Care'],
    ['assets/images/categories/Rustremover.png', 'Rust Remover'],
    ['assets/images/categories/lightcotton.png', 'Light Cotton'],
    ['assets/images/categories/bedsheet.png', 'Bed Sheet'],
    ['assets/images/categories/bigtowel.png', 'Big towel'],
    ['assets/images/categories/pillowcase.png', 'Pillow Case'],
    ['assets/images/categories/duvetwhite.png', 'Duvet white'],
    ['assets/images/categories/duvetcolor.png', 'Duvet Color'],
    ['assets/images/categories/speccotton.png', 'Spec Cotton'],
    ['assets/images/categories/heavy2cotton.png', 'Heavy2Cotton'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              expandedHeight: 80.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'All categories',
                  style: AppTextStyles.body14.copyWith(fontSize: 10.sp),
                  textAlign: TextAlign.center,
                ),
                centerTitle: true,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.9,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.sp),
                              color: greyShade3,
                            ),
                            child: Image(
                              image: AssetImage(categories[index][0]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          categories[index][1],
                          style: AppTextStyles.small10Bold
                              .copyWith(fontSize: 10.sp),
                        ),
                      ],
                    );
                  },
                  childCount: categories.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
