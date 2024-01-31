import 'package:flutter/material.dart';


class MyHorizontalList extends StatelessWidget {
  final List<String> images = [
     'lib/crafted_pics/one.png',
     'lib/crafted_pics/two.png',
     'lib/crafted_pics/three.png',
     'lib/crafted_pics/four.png',
     'lib/crafted_pics/one.png',
     'lib/crafted_pics/two.png',
     'lib/crafted_pics/three.png',
     'lib/crafted_pics/four.png',
   
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  images[index],
                  width: 150.0, 
                  height: 200.0, 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}