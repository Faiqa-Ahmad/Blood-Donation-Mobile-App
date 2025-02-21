import 'package:flutter/material.dart';
import 'package:life_hero/parts/info_widget.dart';

class Dashboard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/post1.jpg",
      "images/post2.jpg",
      "images/o-plus.png",
      "images/o-neg.png",
      "images/b-plus.png",
      "images/b-neg.png",
      "images/ab-plus.png",
      "images/ab-neg.png",
      "images/a-plus.png",
      "images/a-neg.png",
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GridTile(
                footer: Text("Who can give blood"),
                child: ClipRRect(
                  child: Image.asset(images[index]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
