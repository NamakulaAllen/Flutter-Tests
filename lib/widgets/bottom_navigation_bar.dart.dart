import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.grey[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.grey[700], // Placeholder for video thumbnail
          ),
          const SizedBox(height: 5),
          const Text(
            "Video Title",
            style: TextStyle(color: Colors.white, fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Channel Name • 1.2M views • 2 days ago",
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class ShortsCard extends StatelessWidget {
  final String imageUrl; // Add a parameter for image URL
  final String title;

  const ShortsCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark theme background
      appBar: AppBar(
        title: const Text("YouTube Clone"),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Recommended Videos section
            const Text(
              "Recommended Videos",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Column(
              children: const [
                VideoCard(),
                SizedBox(height: 10),
                VideoCard(),
                SizedBox(height: 10),
                VideoCard(),
                SizedBox(height: 10),
                VideoCard(),
                SizedBox(height: 10),
              ],
            ),
            const SizedBox(height: 20),

            // Shorts section
            const Text(
              "Shorts",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ShortsCard(
                    imageUrl: 'https://example.com/short1.jpg',
                    title: 'Short 1',
                  ),
                  ShortsCard(
                    imageUrl: 'https://example.com/short2.jpg',
                    title: 'Short 2',
                  ),
                  ShortsCard(
                    imageUrl: 'https://example.com/short3.jpg',
                    title: 'Short 3',
                  ),
                  ShortsCard(
                    imageUrl: 'https://example.com/short4.jpg',
                    title: 'Short 4',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}
