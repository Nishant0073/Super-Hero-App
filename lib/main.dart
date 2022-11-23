import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_hero_app/provider.dart/superhero_provider.dart';
import 'package:super_hero_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuperheroProvider(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
