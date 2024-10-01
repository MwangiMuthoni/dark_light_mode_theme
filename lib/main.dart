import 'package:darklight_theme/pages/HomePage.dart';
import 'package:darklight_theme/theme/Theme.dart';
import 'package:darklight_theme/theme/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,

    );
  }
}
