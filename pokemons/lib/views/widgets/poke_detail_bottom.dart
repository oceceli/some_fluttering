import 'package:flutter/material.dart';
import 'package:pokemon_info/constants/constants.dart';
import 'package:pokemon_info/models/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeDetailBottom extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeDetailBottom({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.w))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h.w, vertical: 35.h.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _listRows('Name', pokemon.name!),
            _listRows('Height', pokemon.height!),
            _listRows('Weight', pokemon.weight!),
            _listRows('Spawn Time', pokemon.spawnTime!),
            _listRows('Weakness', pokemon.weaknesses!),
            _listRows('Pre Evolution', pokemon.prevEvolution),
          ],
        ),
      ),
    );
  }

  Row _listRows(String title, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(', '),
            style: const TextStyle(fontSize: 15),
          )
        else if (value == null)
          const Text('Not found')
        else
          Text(
            value,
            style: const TextStyle(fontSize: 15),
          ),
      ],
    );
  }
}
