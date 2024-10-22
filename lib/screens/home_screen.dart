import 'package:flutter/material.dart';
import '../widgets/app_bar.dart'; // Assuming you have a custom app bar
import '../widgets/video_card.dart'; // Assuming you have a custom video card

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), // Use your custom app bar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Remove the Categories section
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryChip("All"),
                  _buildCategoryChip("Music"),
                  _buildCategoryChip("Gaming"),
                  _buildCategoryChip("News"),
                  _buildCategoryChip("Nollywood"),
                  _buildCategoryChip("Mixes"),
                  _buildCategoryChip("Choirs"),
                ],
              ),
            ),
            const Divider(),

            // Video list section - Updated to ListView
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Videos",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6, // Example video count
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: VideoCard(), // Replace with your video card widget
                );
              },
            ),

            const Divider(),

            // Shorts section
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Shorts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(5),
                    color: const Color.fromARGB(255, 214, 213, 213),
                    child: Center(
                      child: Text(
                        "Short ${index + 1}",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'You',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(label),
        backgroundColor: const Color.fromARGB(255, 248, 245, 245),
      ),
    );
  }
}
