import 'package:flutter/material.dart';
import 'massages.dart';// Import the Messages Screen
import 'profil.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add the pages to be navigated to
    Container(),  // Placeholder for Home page
    MessagesScreen(),  // Your messages screen (screens/massages.dart)
    Container(),  // Placeholder for Book page
    ProfileScreen(),  // Your profile screen (screens/profil.dart)
    Container(),  // Placeholder for Search page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Alfha'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Banner
            Container(
              width: double.infinity, // Membuat banner penuh kiri dan kanan
              height: 200,
              child: Image.asset(
                'assets/image/banner.jpg', // Ganti dengan path gambar yang sesuai
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            // Keep Moving Up Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Keep Moving Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Categories Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black // Warna teks merah
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.black), // Warna teks merah
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildCategoryButton('Budaya'),
                  _buildCategoryButton('Seni'),
                  _buildCategoryButton('Kuliner'),
                  _buildCategoryButton('Wisata'),
                  _buildCategoryButton('Sejarah'),
                  _buildCategoryButton('Event'),
                  _buildCategoryButton('Kompetisi'),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Top Courses Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Top Courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(4, (index) {
                  return _buildCourseCardWithImage('Course ${index + 1}');
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.red[100],
        onTap: (index) {
          setState(() {
            _currentIndex = index;  // Update the selected index
            if (index == 1) {
              // Navigate to Messages screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesScreen()),
              );
            } else if (index == 3) {
              // Navigate to Profile screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            }
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

  Widget _buildCategoryButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[900], // Warna tombol merah
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white), // Warna teks putih
      ),
    );
  }

  Widget _buildCourseCardWithImage(String title) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/imagesatu.jpg'), // Ganti dengan path gambar
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
