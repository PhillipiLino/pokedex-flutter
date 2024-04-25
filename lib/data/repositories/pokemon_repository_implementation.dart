import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon_repository_interface.dart';

class PokemonRepositoryImplementation implements IPokemonRepository {
  @override
  Future<List<PokemonEntity>> getPokemons() async {
    return [
      const PokemonEntity(
        id: '001',
        name: 'Bulbasaur',
        imageUrl:
            'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png',
        type: 'type',
      ),
      const PokemonEntity(
        id: '002',
        name: 'Ivysaur',
        imageUrl:
            'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/002.png',
        type: 'type',
      ),
      const PokemonEntity(
        id: '003',
        name: 'Venusaur',
        imageUrl:
            'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/003.png',
        type: 'type',
      ),
      const PokemonEntity(
        id: '004',
        name: 'Charmander',
        imageUrl:
            'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png',
        type: 'type',
      ),
    ];
  }
}
