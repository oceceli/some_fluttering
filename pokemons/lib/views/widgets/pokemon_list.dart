import 'package:flutter/material.dart';
import 'package:pokemon_info/constants/constants.dart';
import 'package:pokemon_info/models/pokemon_model.dart';
import 'package:pokemon_info/services/pokemon_api.dart';
import 'package:pokemon_info/views/widgets/pokemon_list_item.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonsFuture;

  @override
  void initState() {
    super.initState();
    _pokemonsFuture = PokemonApi.getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonsFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel>? _pokemonList = snapshot.data;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Constants.getGridCountBasedOnOrientation()),
            itemCount: _pokemonList!.length,
            itemBuilder: (context, index) {
              return PokemonListItem(pokemon: _pokemonList[index]);
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("Hata oldu! " + snapshot.error.toString()));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
