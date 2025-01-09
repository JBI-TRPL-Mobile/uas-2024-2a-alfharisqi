import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'massages.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView( // Membungkus seluruh konten dengan SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Title
              Text(
                "Profil",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // Profile Image
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/image/profile.jpg'), // Ganti dengan path gambar profil Anda
                ),
              ),
              SizedBox(height: 20),

              // Video Preferences Section
              Text(
                'Video Preferences',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Video Preferences
                },
                child: ListTile(
                  title: Text('Download Option'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Video Playback Option
                },
                child: ListTile(
                  title: Text('Video Playback Option'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              SizedBox(height: 20),

              // Account Settings Section
              Text(
                'Account Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Account Security
                },
                child: ListTile(
                  title: Text('Account Security'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Email Notification Preferences
                },
                child: ListTile(
                  title: Text('Email Notification Preferences'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Learning Reminder
                },
                child: ListTile(
                  title: Text('Learning Reminder'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              SizedBox(height: 20),

              // App Settings Section
              Text(
                'App Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for About LearnOut
                },
                child: ListTile(
                  title: Text('About LearnOut'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Frequently Asked Questions
                },
                child: ListTile(
                  title: Text('Frequently Asked Questions'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or actions for Store the LearnOut App
                },
                child: ListTile(
                  title: Text('Store the LearnOut App'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16), // Panah kecil
                ),
              ),
              SizedBox(height: 20),

              // Centered Log Out Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement log out logic here
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red, backgroundColor: Colors.white, // Text color (red)
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
                    elevation: 5, // Adding some elevation to the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.red[100],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Book'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        onTap: (index) {
          if (index == 0) {
            // Navigate to Dashboard screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          } else if (index == 1) {
            // Navigate to Messages screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessagesScreen()),
            );
          }
          // Handle other navigation actions for Profile, Book, and Search as needed
        },
      ),
    );
  }
}
