import 'package:flutter_test/flutter_test.dart';
import 'package:pokedexbeta/src/repositories/poke_repository.dart';

main() {
  final repository = PokeRepository();

  test('deve trazer a listagens dos pokemons', () async {
    final list = await repository.returnData();
    print(list);
  });
}
