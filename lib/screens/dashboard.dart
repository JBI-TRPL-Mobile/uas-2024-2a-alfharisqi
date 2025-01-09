import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, User!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/messages');
              },
              child: Text('View Messages'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('View Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
