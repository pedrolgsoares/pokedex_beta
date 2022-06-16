import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedexbeta/app/src/models/pokemon.dart';

class PokeRepository {
  final dio = Dio();
  final url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  Future<List<Pokemon>> returnData() async {
    final response = await dio.get(url);
    final json = jsonDecode(response.data) as Map<String, dynamic>;
    final list = json['pokemon'] as List<dynamic>;
    return list.map((e) => Pokemon.fromJson(e)).toList();
  }
}
