import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_code_initiall/GetX/controller.dart';
import 'package:vs_code_initiall/GetX/secondpage.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  var controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${controller.counter}')),
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                  Get.to(SecondPage());
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
