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
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Nº ${pokemon.num} ${pokemon.name}",
            style: const TextStyle(fontSize: 25.0),
          ),
          Align(
            child: Hero(
                tag: pokemon.img!,
                child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(pokemon.img!),
                      ),
                    ))),
          ),
          Text("Altura:  ${pokemon.height}",
              style: const TextStyle(fontSize: 30)),
          Text("Peso: ${pokemon.weight}", style: const TextStyle(fontSize: 30)),
          const Text(
            "Pokémon do tipo:",
            style: TextStyle(fontSize: 30.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pokemon.type!
                .map((type) => FilterChip(
                    backgroundColor: Colors.blue[400],
                    label: Text(type),
                    onSelected: (selected) {}))
                .toList(),
          ),
          const Text(
            "Fraco contra: ",
            style: TextStyle(fontSize: 30.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pokemon.weaknesses!
                .map((weak) => FilterChip(
                    backgroundColor: Colors.yellow[400],
                    label: Text(weak),
                    onSelected: (selected) {}))
                .toList(),
          )
        ],
      ),
    );
  }
}
