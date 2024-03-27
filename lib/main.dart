import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tomisha_test/pages/home_portrait.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black87, // Color for the Status Bar
      statusBarIconBrightness: Brightness.light, // Status Bar icons' color
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(title: 'Tomisha Work'),
    );
  }
}
