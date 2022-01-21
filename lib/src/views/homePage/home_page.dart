import 'package:flutter/material.dart';
import 'package:pokedexbeta/src/views/pokeList/poke_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokédex versão beta")),
      body: _pageAcess(),
    );
  }

  _pageAcess() {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/title.png"),
          Image.asset("assets/images/icon.png"),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 15,
                shadowColor: Colors.black),
            child: const Text(
              'Acessar a pokédex',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PokeList()),
              );
            },
          )
        ],
      ),
    );
  }
}
