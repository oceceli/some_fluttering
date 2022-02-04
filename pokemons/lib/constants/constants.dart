import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokemons';

  static const String pokeballUrl = 'assets/images/pokeball.png';

  static int getGridCountBasedOnOrientation() {
    return ScreenUtil().orientation == Orientation.portrait ? 2 : 3;
  }

  static TextStyle getTitleStyle({double def = 48}) {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: def,
    );
  }

  static TextStyle getChipStyle() {
    return const TextStyle(color: Colors.black);
  }

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade200;
    } else {
      return Colors.pink.shade300;
    }
  }
}
