import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Başlık alanı"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Text(
              "Siparişler verilecek, yemekler yenecek",
              style: TextStyle(fontSize: 36),
            ),
          ),
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        ],
      ),
    );
  }
}
