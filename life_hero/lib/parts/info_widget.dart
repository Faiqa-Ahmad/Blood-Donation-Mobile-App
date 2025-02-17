import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  const InfoWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(this.iconData),
          Column(
            children: [
              Text(this.title),
              Text(this.subtitle),
            ],
          )
        ],
      ),
    );
  }
}
