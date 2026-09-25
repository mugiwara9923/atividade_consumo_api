import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/pokemon.dart';

class PokemonService {
  final String baseUrl = 'https://pokeapi.co/api/v2/pokemon';

  Future<Pokemon> buscarPokemon(String nomeOuId) async {
    try {
      final resposta = await http.get(
        Uri.parse('$baseUrl/$nomeOuId'),
      );

      if (resposta.statusCode == 200) {
        final dados = jsonDecode(resposta.body);

        return Pokemon.fromJson(dados);
      }

      if (resposta.statusCode == 404) {
        throw Exception('Pokémon não encontrado.');
      }

      throw Exception(
        'Erro interno da API. Código: ${resposta.statusCode}',
      );
    } on FormatException {
      throw Exception('A resposta da API é inválida.');
    } catch (e) {
      if (e.toString().contains('Pokémon não encontrado')) {
        rethrow;
      }

      if (e.toString().contains('Erro interno da API')) {
        rethrow;
      }

      throw Exception(
        'Não foi possível conectar à PokeAPI.',
      );
    }
  }
}