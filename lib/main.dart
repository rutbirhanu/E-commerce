import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:footwear_admin/admin/controller/home_controller.dart';
import 'package:footwear_admin/firebase_option.dart';
import 'package:footwear_admin/user/controller/register_controller.dart';
import 'package:footwear_admin/user/pages/product_detail.dart';
import 'package:footwear_admin/user/pages/register.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: firebaseOptions
  );
  Get.put(HomeController());
  Get.put(RegisterController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RegisterPage()
    );
  }
}


