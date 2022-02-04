import 'dart:convert';

class PokemonModel {
  PokemonModel({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.egg,
    this.spawnChance,
    this.avgSpawns,
    this.spawnTime,
    this.multipliers,
    this.weaknesses,
    this.prevEvolution,
  });

  final int? id;
  final String? num;
  final String? name;
  final String? img;
  final List<String>? type;
  final String? height;
  final String? weight;
  final String? candy;
  final String? egg;
  final double? spawnChance;
  final double? avgSpawns;
  final String? spawnTime;
  final dynamic multipliers;
  final List<String>? weaknesses;
  final List<PrevEvolution>? prevEvolution;

  factory PokemonModel.fromJson(String str) =>
      PokemonModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromMap(Map<String, dynamic> json) => PokemonModel(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"].toDouble(),
        avgSpawns: json["avg_spawns"].toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"],
        weaknesses: List<String>.from(json["weaknesses"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type!.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": multipliers,
        "weaknesses": List<dynamic>.from(weaknesses!.map((x) => x)),
        "prev_evolution":
            List<dynamic>.from(prevEvolution!.map((x) => x.toMap())),
      };
}

class PrevEvolution {
  PrevEvolution({
    this.num,
    this.name,
  });

  final String? num;
  final String? name;

  factory PrevEvolution.fromJson(String str) =>
      PrevEvolution.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PrevEvolution.fromMap(Map<String, dynamic> json) => PrevEvolution(
        num: json["num"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "num": num,
        "name": name,
      };
}
