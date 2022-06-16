import 'package:flutter/material.dart';
import 'package:pokedexbeta/app/src/controllers/poke_controller.dart';
import 'package:pokedexbeta/app/src/views/detailsPage/details_page.dart';

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
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            childAspectRatio: 2 / 3),
        itemCount: controller.pokemons.length,
        itemBuilder: (BuildContext ctx, index) {
          var pokemon = controller.pokemons[index];
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(controller.pokemons[index])));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Nº ${pokemon.num}",
                      style: const TextStyle(fontSize: 18)),
                  Image.network(pokemon.img!),
                ],
              ),
            ),
          );
        });
  }

  _loading() {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 10,
      ),
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
