import 'package:budget_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Budget App',
      theme: ThemeData(
       
        colorScheme: ColorScheme.light(
          primary: Colors.green,
          onPrimary: Colors.white,
        ),
        // useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
