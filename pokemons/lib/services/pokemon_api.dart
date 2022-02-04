import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon_info/models/pokemon_model.dart';

class PokemonApi {
  static final Uri _url = Uri.parse(
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

  static Future<List<PokemonModel>> getData() async {
    List<PokemonModel> result = [];
    var client = http.Client();
    try {
      var response = await client.get(_url);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        result = (data['pokemon'] as List)
            .map((e) => PokemonModel.fromMap(e))
            .toList();
      } else {
        return Future.error('Ver çekerken sorun oluştu');
      }
    } catch (e) {
      return Future.error(e.toString());
    }

    return result;
  }
}
