import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_info/constants/constants.dart';
import 'package:pokemon_info/models/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonStackedImages extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonStackedImages({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Image(
            image: const AssetImage(Constants.pokeballUrl),
            height: 0.2.sh,
            width: 0.2.sw,
            fit: BoxFit.contain,
          ),
          Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img.toString(),
              height: 0.2.sh,
              width: 0.2.sw,
              fit: BoxFit.contain,
              placeholder: (context, url) => const CircularProgressIndicator(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
