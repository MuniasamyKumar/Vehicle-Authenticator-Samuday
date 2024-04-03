import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'vehicle_details.dart';
import 'vehicle_list_page.dart';

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
      // home: const HomePage(),
      home: const VehicleDetailsPage(),
    );
  }
}
