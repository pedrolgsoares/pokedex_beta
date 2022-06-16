import 'package:flutter/material.dart';
import 'package:pokedexbeta/app/src/models/pokemon.dart';

class DetailsPage extends StatelessWidget {
  final Pokemon pokemon;
  const DetailsPage(this.pokemon, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name!),
        actions: [Image.network(pokemon.img!)],
      ),
      body: _details(),
    );
  }

  _details() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.network(pokemon.img!),
        ),
        const SizedBox(height: 30),
        const Text(
          'Pokémon do tipo:',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: pokemon.type!
              .map((type) => FilterChip(
                  backgroundColor: Colors.blue[400],
                  label: Text(type),
                  onSelected: (selected) {}))
              .toList(),
        ),
        const SizedBox(height: 30),
        const Text(
          'Fraco contra:',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: pokemon.weaknesses!
              .map((weak) => FilterChip(
                  backgroundColor: Colors.yellow[400],
                  label: Text(weak),
                  onSelected: (selected) {}))
              .toList(),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Column(
              children: [
                const Text(
                  'Altura:',
                  style: TextStyle(fontSize: 20),
                ),
                Text(pokemon.height!)
              ],
            ),
            Column(
              children: [
                const Text(
                  'Altura:',
                  style: TextStyle(fontSize: 20),
                ),
                Text(pokemon.height!)
              ],
            )
          ],
        )
      ],
    );
  }
}
