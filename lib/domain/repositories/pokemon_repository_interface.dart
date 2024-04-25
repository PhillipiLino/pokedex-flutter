import 'package:pokedex/domain/entities/pokemon_entity.dart';

abstract class IPokemonRepository {
  Future<List<PokemonEntity>> getPokemons();
}
