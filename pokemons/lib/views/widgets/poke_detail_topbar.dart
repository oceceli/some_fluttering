import 'package:flutter/material.dart';
import 'package:pokemon_info/constants/constants.dart';
import 'package:pokemon_info/models/pokemon_model.dart';

class PokeDetailTopbar extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeDetailTopbar({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pokemon.name!,
                style: Constants.getTitleStyle(def: 30)
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              Text(
                "#" + pokemon.num!,
                style: Constants.getTitleStyle(def: 30)
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Chip(
            label: Text(
              pokemon.type!.join(', '),
              style: Constants.getChipStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
