import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:somagetx/controllers/soma_controller.dart';
import 'package:somagetx/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final SomaController c = Get.put(SomaController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Calcular',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
