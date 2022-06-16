import 'package:flutter/material.dart';
import 'package:pokedexbeta/app/src/views/homePage/home_page.dart';
import 'package:pokedexbeta/app/utils/themes.dart';

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
        theme: AppConfigUI.themeData,
        home: const HomePage());
  }
}
