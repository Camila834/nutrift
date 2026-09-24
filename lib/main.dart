
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
runApp(const NutriFitApp());
}

class NutriFitApp extends StatelessWidget {
const NutriFitApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'NutriFit',
theme: ThemeData(
useMaterial3: true,
fontFamily: 'Roboto',
colorScheme: ColorScheme.fromSeed(
seedColor: const Color(0xFF247A45),
),
),
home: const HomePage(),
);
}
}


