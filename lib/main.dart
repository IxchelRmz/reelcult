import 'package:flutter/material.dart';
import 'ui/screens/home/home_screen.dart';
import 'config/theme.dart';

void main() {
  runApp(const ReelCultApp());
}

class ReelCultApp extends StatelessWidget {
  const ReelCultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReelCult',
      theme: appTheme,
      home: const HomePage(),
    );
  }
}