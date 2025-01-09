import 'package:flutter/material.dart';
import 'dashboard.dart';  // Import Dashboard Screen
import 'profil.dart';   // Import Profile Screen

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int _currentIndex = 1;  // Set the initial selected index to 'Messages' (index 1)

  final List<Widget> _pages = [
    Dashboard(),  // Home page
    MessagesScreen(),  // Current page - Messages screen
    Container(),  // Placeholder for Book page
    ProfileScreen(),  // Profile page
    Container(),  // Placeholder for Search page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 10),
            Text("Messages"),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          // Search icon
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search logic here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Text(
              'Your Messages',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Placeholder for messages
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your message count
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/image/message.jpg'), // Replace with sender's profile image
                      ),
                      title: Text('Message Title $index'),
                      subtitle: Text('This is a preview of message $index.'),
                      trailing: Text('10:00 AM'), // Placeholder for timestamp
                      onTap: () {
                        // Implement message detail navigation
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Set the current index based on the selected tab
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.red[100],
        onTap: (index) {
          setState(() {
            _currentIndex = index;  // Update the selected index
            if (index == 0) {
              // Navigate to Dashboard when Home icon is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            } else if (index == 1) {
              // Stay on Messages screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MessagesScreen()),
              );
            } else if (index == 3) {
              // Navigate to Profile screen when person icon is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            }
            // Handle other navigation actions as needed
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Book'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
