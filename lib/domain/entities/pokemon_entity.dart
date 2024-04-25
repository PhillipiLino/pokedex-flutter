import 'package:equatable/equatable.dart';

class PokemonEntity extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String type;

  const PokemonEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        type,
      ];
}
