import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final String pokemonName;
  final String pokemonImageUrl;
  final String pokemonId;
  final String pokemonType;

  const PokemonCard({
    required this.pokemonName,
    required this.pokemonImageUrl,
    required this.pokemonId,
    required this.pokemonType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green[100],
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Spacer(),
              Image.network(
                pokemonImageUrl,
                height: 130,
                width: 130,
              ),
              const Spacer(),
              Text(
                pokemonName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(pokemonId),
            ],
          ),
        ),
      ),
    );
  }
}
