import 'package:flutter/material.dart';
import 'package:hw3/screens/myscreen.dart';
import 'package:hw3/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marjon App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: routes,
      home: const HomeScreen(),
    );
  }
}
