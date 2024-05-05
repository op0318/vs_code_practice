import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioHomePage extends StatefulWidget {
  const DioHomePage({super.key});

  @override
  State<DioHomePage> createState() => _DioHomePageState();
}

class _DioHomePageState extends State<DioHomePage> {
  late Dio dio;
  late String firstPostTitle;
  late bool isLoading;

  @override
  void initState() {
    super.initState();
    dio = Dio();
    firstPostTitle = 'Press the Button';
    isLoading = false;

    //Add the interceptor at DIo
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dio'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });
                    final response =
                        dio.get('https://jsonplaceholder.typicode.com/users');
                    setState(() {
                      firstPostTitle = response as String;
                      isLoading = false;
                    });
                  },
                  child: Text('Get Data '))
            ],
          ),
        ),
      ),
    );
  }
}
