import 'package:aotsum_assignment/module/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'component/size_config.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const MaterialApp(
      title: 'Assignment',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

