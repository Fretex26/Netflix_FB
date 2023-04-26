import 'package:flutter/material.dart';

class CardGame extends StatelessWidget {

  final Widget image;
  final String title;
  final String subtitle;

  const CardGame({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Column(
        children: [
          image,
          Container(
            height: 60.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title, textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 13.0)),
                Text(subtitle, textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 10.0)),
              ],
            ),
          )
        ],
      ),
    );
  }
}