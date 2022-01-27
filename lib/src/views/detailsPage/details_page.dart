import 'package:flutter/material.dart';
import 'package:pokedexbeta/src/models/pokemon.dart';

class DetailsPage extends StatelessWidget {
  final Pokemon pokemon;
  const DetailsPage(this.pokemon, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes do pokémon"),
      ),
      body: _details(),
    );
  }

  _details() {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "#${pokemon.num} ${pokemon.name}",
            style: const TextStyle(fontSize: 35),
          ),
          Align(
            child: Hero(
                tag: pokemon.img!,
                child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(pokemon.img!),
                      ),
                    ))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pokemon.type!
                .map((type) => FilterChip(
                    backgroundColor: Colors.blue[400],
                    label: Text(
                      "Pokémon do tipo: $type",
                    ),
                    onSelected: (selected) {}))
                .toList(),
          ),
          const Text(
            "Fraco contra pokémons do tipo: ",
            style: TextStyle(fontSize: 25.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pokemon.weaknesses!
                .map((weak) => FilterChip(
                    backgroundColor: Colors.blue[400],
                    label: Text(weak),
                    onSelected: (selected) {}))
                .toList(),
          )
        ],
      ),
    );
  }
}
