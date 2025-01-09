import 'package:flutter/material.dart';
import 'dashboard.dart';  // Pastikan DashboardScreen diimpor
import 'massages.dart';   // Pastikan MessagesScreen diimpor
import 'welcome.dart';    // Pastikan WelcomeScreen diimpor

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 3; // Indeks untuk "Profile" di BottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profil",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/image/profile.jpg'),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Video Preferences',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Download Option'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Video Playback Option'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Account Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Account Security'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Email Notification Preferences'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Learning Reminder'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'App Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('About LearnOut'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Frequently Asked Questions'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  title: Text('Store the LearnOut App'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _showLogoutDialog(context); // Tampilkan dialog log out
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red, backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
          setState(() {
            _currentIndex = index;
          });

          // Navigasi berdasarkan pilihan tab
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MessagesScreen()),
            );
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
        },
      ),
    );
  }

  // Fungsi untuk menampilkan dialog log out
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Log Out"),
          content: Text("Log out dari Osing Pedia?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog jika Cancel ditekan
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
                _logoutAndNavigateToWelcome(context); // Pindah ke WelcomeScreen
              },
              child: Text("Logout"),
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk logout dan navigasi ke WelcomeScreen
  void _logoutAndNavigateToWelcome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()), // Ganti dengan screen tujuan Anda
    );
  }
}
