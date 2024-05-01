abstract class IPokemonRepository {
  Future<List<Map<String, dynamic>>> getPokemons();
}
