import 'package:get_it/get_it.dart';
import 'package:pokedex/core/client_interface.dart';
import 'package:pokedex/core/dio_client.dart';
import 'package:pokedex/data/repositories/pokemon_repository_implementation.dart';
import 'package:pokedex/domain/repositories/pokemon_repository_interface.dart';
import 'package:pokedex/domain/usecases/get_pokemons_usecase.dart';
import 'package:pokedex/presenter/stores/pokemon_list_page_store.dart';

final getIt = GetIt.instance;

setupInjections() {
  getIt.registerSingleton<IClient>(DioClient());

  getIt.registerSingleton<IPokemonRepository>(
    PokemonRepositoryImplementation(getIt()),
  );

  getIt.registerSingleton<GetPokemonsUsecase>(
    GetPokemonsUsecase(getIt()),
  );

  getIt.registerSingleton<PokemonListPageStore>(
    PokemonListPageStore(getIt()),
  );
}
