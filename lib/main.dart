import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goldy/core/api/api_manager.dart';
import 'package:goldy/core/utils/app_routes.dart';
import 'package:goldy/feature/gold/persentation/screens/gold_screen.dart';
import 'package:goldy/feature/silver/persentation/screens/silver_screen.dart';

import 'feature/home/home_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homeRoute,
          routes: {

            AppRoutes.homeRoute: (context) => const HomeScreen(),
            AppRoutes.goldRoute: (context) => const GoldScreen(),
            AppRoutes.silverRoute: (context) => const SilverScreen(),

          },

        );
      },
    );





  }
}


