import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tomisha_test/pages/home_landscape.dart';
import 'package:tomisha_test/pages/home_portrait.dart';
import 'package:tomisha_test/utils/ui_utils.dart';

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

    UiUtils uiUtils = UiUtils(context);

    return MaterialApp(
      title: 'Tomisha Work',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: uiUtils.getHeight() > uiUtils.getWidth()
          ? const HomePagePortrait(title: 'Tomisha Work')
          : const HomePageLandscape(title: 'Tomisha Work'),
    );
  }
}
