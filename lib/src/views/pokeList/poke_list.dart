import 'package:flutter/material.dart';
import 'package:pokedexbeta/src/controllers/poke_controller.dart';

class PokeList extends StatefulWidget {
  const PokeList({Key? key}) : super(key: key);

  @override
  _PokeListState createState() => _PokeListState();
}

class _PokeListState extends State<PokeList> {
  final controller = PokeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bem vindo(a) a sua pokédex"),
      ),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return validandoEstados(controller.state.value);
        },
      ),
    );
  }

  // Método para os Estados
  validandoEstados(HomeState state) {
    switch (state) {
      case HomeState.sucess:
        return _sucess();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      default:
    }
  }

  _sucess() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            childAspectRatio: 1 / 2),
        itemCount: controller.pokemons.length,
        itemBuilder: (BuildContext ctx, index) {
          var pokemon = controller.pokemons[index];

          return Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(pokemon.img!),
                Text(pokemon.name!,
                    style: const TextStyle(color: Colors.white, fontSize: 20)),
                Text(pokemon.height!,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
                Text(pokemon.weight!,
                    style: const TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          );
        });
  }

  _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  _error() {
    return const Center(
      child: Text("Sem resposta da API"),
    );
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }
}
