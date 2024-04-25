import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon_repository_interface.dart';

class GetPokemonsUsecase {
  final IPokemonRepository repository;

  GetPokemonsUsecase(this.repository);

  Future<List<PokemonEntity>> call() {
    return repository.getPokemons();
  }
}
