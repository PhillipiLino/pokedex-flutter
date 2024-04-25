import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/usecases/get_pokemons_usecase.dart';

import '../../data/repositories/pokemon_repository_implementation.dart';

class PokemonListPageStore {
  late final GetPokemonsUsecase usecase;

  PokemonListPageStore() {
    final repository = PokemonRepositoryImplementation();
    usecase = GetPokemonsUsecase(repository);
  }

  Future<List<PokemonEntity>> getPokemons() {
    final list = usecase();
    return list;
  }
}
