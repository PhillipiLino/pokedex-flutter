import 'package:equatable/equatable.dart';

class PokemonEntity extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String type;

  static const _name = 'name';
  static const _url = 'url';

  const PokemonEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type,
  });

  factory PokemonEntity.fromJson(Map<String, dynamic> json) {
    String name = json[_name] as String? ?? 'Desconhecido';
    final url = json[_url] as String? ?? '';

    name = '${name[0].toUpperCase()}${name.substring(1)}';

    String id = url.replaceAll('https://pokeapi.co/api/v2/pokemon/', '');
    id = id.substring(0, id.length - 1);
    id = id.padLeft(3, '0');

    final imageUrl =
        'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/$id.png';

    return PokemonEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      type: 'grass',
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        type,
      ];
}
