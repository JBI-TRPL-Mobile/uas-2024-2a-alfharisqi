import 'package:flutter/material.dart';
import '../providers/user_provider.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: FutureBuilder(
          future: userProvider.fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return ListView.builder(
              itemCount: userProvider.users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userProvider.users[index].name),
                  subtitle: Text(userProvider.users[index].email),
                );
              },
            );
          },
        ),
      ),
    );
  }
}