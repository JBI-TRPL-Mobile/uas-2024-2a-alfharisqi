import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _obscureTextPassword = true;
  bool _obscureTextConfirmPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureTextPassword = !_obscureTextPassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureTextConfirmPassword = !_obscureTextConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.red, // Set AppBar color to red
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 40, // Ukuran font besar
                fontWeight: FontWeight.bold,
                color: Colors.red[900], // Warna merah untuk teks
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Fill in the details below to create a new account.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                hintText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'yourmail@mail.com...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: _obscureTextPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: '********...',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureTextPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _confirmPasswordController,
              obscureText: _obscureTextConfirmPassword,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: '********...',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureTextConfirmPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _toggleConfirmPasswordVisibility,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement sign in logic
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red[900], backgroundColor: Colors.red[200], minimumSize: Size(double.infinity, 50), // Set text color to white
              ),
            ),
            SizedBox(height: 20),
            Text('or sign up with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Text(
                    'G',
                    style: TextStyle(
                      fontSize: 36, // Larger font size
                      fontWeight: FontWeight.bold, // Bold text
                      color: Colors.red, // Red color for the icon
                      fontFamily: 'Roboto', // Font style (you can change to another font)
                    ),
                  ),
                  onPressed: () {
                    // Implement Google sign up logic
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Text(
                    'f',
                    style: TextStyle(
                      fontSize: 36, // Larger font size
                      fontWeight: FontWeight.bold, // Bold text
                      color: Colors.blue, // Blue color for the icon (Facebook color)
                      fontFamily: 'Roboto', // Font style (you can change to another font)
                    ),
                  ),
                  onPressed: () {
                    // Implement Facebook sign up logic
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to Sign In page
                Navigator.pushNamed(context, '/signIn');
              },
              child: Text("Don't have an account? Sign Up Now"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red[900], // Set color of the text to red
              ),
            ),
          ],
        ),
      ),
    );
  }
}