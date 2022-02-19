import 'package:flutter/material.dart';

import 'burcItem.dart';
import 'data/Strings.dart';
import 'models/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynagi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Listesi"),
      ),
      body: ListView.builder(
        itemCount: tumBurclar.length,
        addSemanticIndexes: true,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          Burc burc = tumBurclar[index];
          return BurcItem(burc: burc);
        },
      ),
    );
  }

  List<Burc> veriKaynagi() {
    List<Burc> liste = [];
    for (var i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + (i + 1).toString() + ".png";
      var burcBuyukResim = Strings.BURC_ADLARI[i].toLowerCase() +
          "_buyuk" +
          (i + 1).toString() +
          ".png";
      liste.add(
        Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim),
      );
    }

    return liste;
  }
}
