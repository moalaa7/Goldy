import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goldy/core/utils/app_colors.dart';
import 'package:goldy/core/widget/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomElevatedButton(text: "Gold", onPressed: (){}, backgroundColor: AppColors.goldColor,  ),
            SizedBox(
              height: 10.h,
            ),
            CustomElevatedButton(text: "Silver", onPressed: (){}, backgroundColor: AppColors.silverColor,  )

          ],      ),

    );
  }
}
