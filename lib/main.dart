import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/check.dart';

import 'screens/dashboard page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // home: const CheckPage(),
    );
  }
}
