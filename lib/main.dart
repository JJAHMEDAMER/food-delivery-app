import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food_page/food_page.dart';
import 'package:food_delivery_app/pages/food_page/side_food.dart';
import 'package:food_delivery_app/pages/home_page/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SideFood(),
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
    );
  }
}
