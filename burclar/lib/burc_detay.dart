import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc data;
  const BurcDetay({required Burc this.data, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarColor = Colors.blue;
  late PaletteGenerator _generator;
  void initState() {
    super.initState();
    setAppBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            expandedHeight: 200,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.data.burcAdi + " Burcu"),
              background: Image.asset(
                'images/' + widget.data.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                widget.data.burcDetayi + '\n' + widget.data.burcTarihi,
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

  void setAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage('images/' + widget.data.burcBuyukResim),
    );
    setState(() {
      appBarColor = _generator.darkVibrantColor!.color;
    });
  }
}
