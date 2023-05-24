import 'package:flutter/material.dart';
import 'package:tz/screens/screen_four/presentation/screen_four.dart';
import 'package:tz/screens/screen_one/presentation/screen_one.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tz/screens/screen_three/presentation/screen_three.dart';
import 'package:tz/screens/screen_two/presentation/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: ResponsiveSizer(
    builder: (context, orientation, screenType) {
    return const ScreenFour();
    },
    ));
  }
}

