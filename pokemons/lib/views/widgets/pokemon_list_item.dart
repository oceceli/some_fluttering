import 'package:flutter/material.dart';
import 'package:pokemon_info/constants/constants.dart';
import 'package:pokemon_info/models/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_info/views/pages/poke_detail_page.dart';
import 'package:pokemon_info/views/widgets/pokemon_stacked_images.dart';

class PokemonListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PokeDetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        shadowColor: Colors.white,
        elevation: 3,
        color: Constants.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name.toString(),
                style: Constants.getTitleStyle(def: 30),
              ),
              Chip(label: Text(pokemon.type![0])),
              Expanded(child: PokemonStackedImages(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
