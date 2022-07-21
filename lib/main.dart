import 'package:e_library/screen/home.dart';
import 'package:e_library/screen/upload.dart';
import 'package:e_library/utils.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        // backgroundColor: primaryColor,
        body: const Upload()),
    );
  }
}