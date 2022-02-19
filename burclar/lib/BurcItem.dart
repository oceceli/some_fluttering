import 'package:flutter/material.dart';
import 'package:flutter_application_2/burc_detay.dart';

import 'models/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc burc;
  const BurcItem({
    Key? key,
    required this.burc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 3,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BurcDetay(
                data: burc,
              ),
            ),
          );
        },
        title: Text(
          burc.burcAdi,
          style: myTextStyle.headline5,
        ),
        subtitle: Text(
          burc.burcTarihi,
          style: myTextStyle.subtitle1,
        ),
        leading: Image.asset(
          "images/" + burc.burcKucukResim,
          height: 65,
          width: 64,
        ),
        contentPadding: EdgeInsets.all(10),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
