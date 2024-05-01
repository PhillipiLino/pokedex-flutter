import 'package:equatable/equatable.dart';

class PokemonModel extends Equatable {
  final String? name;
  final String? url;

  static const _name = 'name';
  static const _url = 'url';

  const PokemonModel({
    required this.name,
    required this.url,
  });

  PokemonModel.fromJson(Map<String, dynamic> json)
      : name = json[_name] as String?,
        url = json[_url] as String?;

  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
