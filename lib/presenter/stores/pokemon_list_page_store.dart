import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/usecases/get_pokemons_usecase.dart';

class PokemonListPageStore {
  final GetPokemonsUsecase usecase;

  PokemonListPageStore(this.usecase);

  Future<List<PokemonEntity>> getPokemons() {
    final list = usecase();
    return list;
  }
}
