import 'package:pokedex/core/client_interface.dart';
import 'package:pokedex/domain/repositories/pokemon_repository_interface.dart';

class PokemonRepositoryImplementation implements IPokemonRepository {
  final IClient client;

  PokemonRepositoryImplementation(this.client);

  @override
  Future<List<Map<String, dynamic>>> getPokemons() async {
    final Map<String, dynamic> response = await client.get(
      'https://pokeapi.co/api/v2/pokemon',
    );

    final list = response["results"] as List?;
    return list?.cast<Map<String, dynamic>>() ?? [];
  }
}
