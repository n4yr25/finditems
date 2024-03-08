import 'package:finditems/screens/scene1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FindItemsApp());
}

class FindItemsApp extends StatelessWidget {
  const FindItemsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scene1Screen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
