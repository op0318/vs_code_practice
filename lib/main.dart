import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_code_initiall/Dio/dio_home_page.dart';
import 'package:vs_code_initiall/GetX/firstpage.dart';
import 'package:vs_code_initiall/Hive/hive_homepage.dart';

void main() {
  runApp(MaterialApp(home: HiveHomePage()
      // MyApp()
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FirstPage(),
    );
  }
}
