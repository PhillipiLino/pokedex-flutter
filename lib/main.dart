import 'package:flutter/material.dart';

import 'injections.dart';
import 'presenter/pages/pokemon_list_page.dart';

void main() {
  setupInjections();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PokemonListPage(),
    );
  }
}
