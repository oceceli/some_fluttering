import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_info/constants/constants.dart';
import 'package:pokemon_info/models/pokemon_model.dart';
import 'package:pokemon_info/views/widgets/poke_detail_bottom.dart';
import 'package:pokemon_info/views/widgets/poke_detail_topbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeDetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeDetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _portreitDetail(context)
        : _LandscapeDetail(context);
  }

  Scaffold _portreitDetail(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Constants.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PokeDetailTopbar(pokemon: pokemon),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Image(
                      image: const AssetImage(Constants.pokeballUrl),
                      fit: BoxFit.fitHeight,
                      // width: 50,
                      height: 0.12.sh,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0.1.sh,
                    child: PokeDetailBottom(pokemon: pokemon),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(
                        imageUrl: pokemon.img ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Scaffold _LandscapeDetail(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Constants.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                PokeDetailTopbar(pokemon: pokemon),
                SizedBox(
                  height: 50.h,
                ),
                Hero(
                  tag: pokemon.id!,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    fit: BoxFit.cover,
                    height: 0.25.sw,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: PokeDetailBottom(pokemon: pokemon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
