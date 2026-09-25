import 'dart:io';

import '../lib/services/pokemon_service.dart';

void mostrarMenu() {
  print('');
  print('==============================');
  print('       POKEDEX DART');
  print('==============================');
  print('1 - Consultar Pokémon');
  print('2 - Exibir histórico');
  print('3 - Limpar histórico');
  print('0 - Encerrar');
  print('==============================');
}

Future<void> consultarPokemon(
  PokemonService service,
  List<String> historico,
) async {
  stdout.write('Digite o nome ou número do Pokémon: ');
  String entrada = stdin.readLineSync() ?? '';

  if (entrada.trim().isEmpty) {
    print('Erro: você não digitou nenhum Pokémon.');
    return;
  }

  try {
    final pokemon = await service.buscarPokemon(entrada);

    print('');
    print('===== POKÉMON =====');
    print('Nome: ${pokemon.nome}');
    print('ID: ${pokemon.id}');
    print('Altura: ${pokemon.altura}');
    print('Peso: ${pokemon.peso}');
    print('Tipos: ${pokemon.tipos.join(', ')}');
    print('Experiência base: ${pokemon.experienciaBase}');
    print('Habilidades: ${pokemon.habilidades.join(', ')}');

    historico.add(pokemon.nome);
  } catch (e) {
    print('');
    print('Erro: $e');
  }
}

void exibirHistorico(List<String> historico) {
  print('');
  print('===== HISTÓRICO =====');

  if (historico.isEmpty) {
    print('Nenhum Pokémon foi consultado ainda.');
  } else {
    for (String nome in historico) {
      print('- $nome');
    }
  }
}

void limparHistorico(List<String> historico) {
  historico.clear();

  print('');
  print('Histórico limpo com sucesso.');
}

void main() async {
  PokemonService service = PokemonService();

  List<String> historico = [];

  String? opcao;

  while (opcao != '0') {
    mostrarMenu();

    stdout.write('Escolha uma opção: ');
    opcao = stdin.readLineSync();

    if (opcao == '1') {
      await consultarPokemon(service, historico);
    } else if (opcao == '2') {
      exibirHistorico(historico);
    } else if (opcao == '3') {
      limparHistorico(historico);
    } else if (opcao != '0') {
      print('Opção inválida.');
    }
  }

  print('');
  print('Programa encerrado.');
}