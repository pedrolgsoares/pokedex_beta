import 'package:flutter/material.dart';
import 'package:pokedexbeta/app/src/models/pokemon.dart';
import 'package:pokedexbeta/app/src/repositories/poke_repository.dart';

class PokeController {
  List<Pokemon> pokemons = [];
  final repositoryPost = PokeRepository();
  final state = ValueNotifier<HomeState>(HomeState.sucess);

  Future start() async {
    state.value = HomeState.loading;
    try {
      pokemons = await repositoryPost.returnData();
      state.value = HomeState.sucess;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { loading, sucess, error }
