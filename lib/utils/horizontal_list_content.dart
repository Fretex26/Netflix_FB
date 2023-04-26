import 'package:flutter/material.dart';

class HorizontalListContent extends StatefulWidget {

  final String title;
  final List <Widget> images;

  const HorizontalListContent({
    required this.title,
    required this.images,
    super.key
  });

  @override
  State<HorizontalListContent> createState() => _HorizontalListContentState(title: title, images: images);
}

class _HorizontalListContentState extends State<HorizontalListContent> {

  String title;
  List <Widget> images;

  _HorizontalListContentState({
    required this.title,
    required this.images
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.w600
          ),
        ),
        
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 100.0,
                  width: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: images[index],
                    ),
                  ),
                );
            },
          ),
        ),

      ],
    );
  }
}