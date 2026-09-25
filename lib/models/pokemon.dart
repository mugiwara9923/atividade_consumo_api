class Pokemon {
  int id;
  String nome;
  int altura;
  int peso;
  String imagem;
  List<String> tipos;
  int experienciaBase;
  List<String> habilidades;

  Pokemon({
    required this.id,
    required this.nome,
    required this.altura,
    required this.peso,
    required this.imagem,
    required this.tipos,
    required this.experienciaBase,
    required this.habilidades,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    List<String> tipos = [];

    for (var tipo in json['types']) {
      tipos.add(tipo['type']['name']);
    }

    List<String> habilidades = [];

    for (var habilidade in json['abilities']) {
      habilidades.add(habilidade['ability']['name']);
    }

    return Pokemon(
      id: json['id'],
      nome: json['name'],
      altura: json['height'],
      peso: json['weight'],
      imagem: json['sprites']['front_default'],
      tipos: tipos,
      experienciaBase: json['base_experience'],
      habilidades: habilidades,
    );
  }
}