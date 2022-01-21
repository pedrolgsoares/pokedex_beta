import 'package:flutter/material.dart';
import 'package:pokedexbeta/src/models/pokemon.dart';

class PokeList extends StatefulWidget {
  const PokeList({Key? key, required this.list}) : super(key: key);

  final List<Pokemon> list;
  @override
  _PokeListState createState() => _PokeListState();
}

class _PokeListState extends State<PokeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bem vindo(a) a sua pokédex"),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Bulbassauro'),
              subtitle: Text('Grass'),
            );
          }),
    );
  }
}
