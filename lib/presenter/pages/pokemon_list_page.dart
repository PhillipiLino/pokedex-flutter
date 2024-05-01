import 'package:flutter/material.dart';
import 'package:pokedex/injections.dart';
import 'package:pokedex/presenter/stores/pokemon_list_page_store.dart';

import '../../domain/entities/pokemon_entity.dart';
import '../widgets/pokemon_card.dart';
import '../widgets/search_bar_field.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final store = getIt<PokemonListPageStore>();
  List<PokemonEntity> list = [];

  @override
  void initState() {
    getPokemons();
    super.initState();
  }

  getPokemons() async {
    final pokemons = await store.getPokemons();
    setState(() => list = pokemons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Pokedex',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Search by a pokemon by name or using its National Pokedex number.',
              ),
              const SizedBox(height: 20),
              const SearchBarField(),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 230,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final pokemon = list[index];
                    return PokemonCard(
                      pokemonName: pokemon.name,
                      pokemonImageUrl: pokemon.imageUrl,
                      pokemonId: pokemon.id,
                      pokemonType: pokemon.type,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
