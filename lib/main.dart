import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/ButtonTest.dart';
import 'package:untitled/AnnimationBb.dart';
import 'package:untitled/FormTestRoute.dart';

import 'ListViewBbb.dart';

import 'package:untitled/ClipTestRoute.dart';
import 'package:untitled/MainPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: "ListView.builder s",
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        routes: {
          "new_page":(context) => ClipTestRoute(),
          // "/":(context) => const ButtonTest(),
          // "/":(context) => const AnimationWidget(),
          // "/":(context) => const FormTest(),
          "/":(context) => const MainPage(),
        }
    );
  }
}
