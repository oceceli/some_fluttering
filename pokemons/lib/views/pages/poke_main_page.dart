// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pokemon_info/views/widgets/app_title.dart';
import 'package:pokemon_info/views/widgets/pokemon_list.dart';

class PokeMainPage extends StatelessWidget {
  const PokeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: OrientationBuilder(builder: (context, orientation) {
        return Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const AppTitle(),
            Expanded(child: PokemonList()),
          ],
        );
      }),
    );
  }
}
