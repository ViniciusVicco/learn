import 'package:dio/dio.dart';
import 'package:learn/app/domain/menu/pokemon_basic_entity.dart';

class PokemonBasicModel extends PokemonBasicEntity {
  PokemonBasicModel({required super.name, required super.url});

  factory PokemonBasicModel.fromJson(Map json) {
    return PokemonBasicModel(name: json['name'], url: json['url']);
  }

  static Future<bool> testUnit({int index = 1}) async {
    try {
      Dio dio = Dio();
      final response = await dio.get("https://pokeapi.co/api/v2/pokemon/");
      final primeiroResultado = (response.data['results'] as List)[index];
      final pokemon = PokemonBasicModel.fromJson(primeiroResultado);
      print(
          "O nome do primeiro pokemon é ${pokemon.name} e o link é ${pokemon.url}");
      return pokemon != null;
    } catch (error) {
      return false;
    }
  }
}
