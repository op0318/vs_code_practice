import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_code_initiall/GetX/controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  var controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Obx(() => Text('${controller.counter}'))),
    );
  }
}
