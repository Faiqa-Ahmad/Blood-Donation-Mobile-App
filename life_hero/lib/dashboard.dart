import 'package:flutter/material.dart';
import 'package:life_hero/parts/info_widget.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                InfoWidget(
                    title: "Request Blood",
                    subtitle: "120 post",
                    iconData: Icons.bloodtype),
                InfoWidget(
                    title: "Request Blood",
                    subtitle: "120 post",
                    iconData: Icons.bloodtype),
              ],
            ),
            Row(
              children: [
                InfoWidget(
                    title: "Donate Blood",
                    subtitle: "120 post",
                    iconData: Icons.bloodtype),
                InfoWidget(
                    title: "Request Blood",
                    subtitle: "120 post",
                    iconData: Icons.bloodtype),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
