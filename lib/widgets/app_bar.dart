import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        // Using the YouTube logo icon
        Icon(
          Icons
              .play_circle_fill, // This icon represents a play button, resembling video content
          color: Colors.red, // YouTube's signature red color
          size: 30, // Adjust the size as needed
        ),
        const SizedBox(width: 8), // Add space between the logo and the title
        const Text(
          'YouTube', // Title text
          style: TextStyle(color: Colors.white, fontSize: 24), // Text style
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.search,
              color: Colors.white), // Set color for icons
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white),
          onPressed: () {},
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: const Icon(Icons.person,
              color: Colors
                  .black), // Set icon color to contrast the white background
        ),
      ],
    ),
  );
}
