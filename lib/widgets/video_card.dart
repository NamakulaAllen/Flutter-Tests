import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Use Container to set a fixed height for the image
          Container(
            height: 200, // Set a height for the image
            width: double
                .infinity, // Make the image take the full width of the card
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/food.jpg'), // Replace with your video thumbnail
                fit: BoxFit.cover, // This will cover the entire space
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Corn and Avocado',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          const Text(
            'HOME COOKING WITH ALLEN',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
