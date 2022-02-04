import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_info/constants/UI_helpers.dart';
import 'package:pokemon_info/constants/constants.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UIHelpers.getAppBarWidgetHeight(),
      color: Colors.amber,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Constants.pokeballUrl,
              width: UIHelpers.getPokeImgWidth(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
