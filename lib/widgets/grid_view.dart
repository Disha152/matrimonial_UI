import 'package:flutter/material.dart';



class MyGridView extends StatelessWidget {

 

  final List<String> images = [
    'assets/images/wedding_pics_1.jpg',
    'assets/images/wedding_pics_2.jpg',
    'assets/images/wedding_pics_3.jpg',
    'assets/images/bridal_backshot.jpg',
  ];
  final List<String> titles = ['Get Complete Family Information', 'Get Matches from your community', 'Enable Your Search Without any barrier', 'Find Your Dream Partner'];
  final List<String> descriptions = [
    'You will find detailed family information in every profile. Knowing the family will help you take the next step with confidence.',
    'With over 80 community sites, you can find a Match from your community. Finding a Match based on caste and religion made easy.',
    'Embark on your journey to find your perfect match now available in multiple languages.',
    'Go through the million of users to find your dream partner.',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, 
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return GridItem(
            image: images[index],
            title: titles[index],
            description: descriptions[index],
          );
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  GridItem({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
  elevation: 3.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(12.0),
        color: Colors.white, // Background color for the card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black, // Text color
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey, // Text color
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ],
  ),
);

  }
}
