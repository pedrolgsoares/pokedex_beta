import 'package:flutter/material.dart';
import 'package:pokedexbeta/src/views/homePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokédex versão beta',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage());
  }
}
