import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.red[900], // Set AppBar color to red
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white, // Set background to white
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Teks Sign In yang lebih besar di atas
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 40, // Ukuran font besar
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900], // Warna merah untuk teks
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Fill in the details below to sign in.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  hintText: 'yourmail@mail.com...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '********...',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Implement forgot password logic
                  },
                  child: Text('Forget Password!'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red[900], // Set color of the text to red
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement sign in logic
                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red[900], backgroundColor: Colors.red[50], minimumSize: Size(double.infinity, 50), // Set text color to white
                ),
              ),
              SizedBox(height: 20),
              Text('or sign in with'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google sign-in icon with larger size
                  IconButton(
                    icon: Text(
                      'G',
                      style: TextStyle(
                        fontSize: 40, // Make the Google icon larger
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      // Implement Google sign in logic
                    },
                  ),
                  SizedBox(width: 20),
                  // Facebook sign-in icon with larger size
                  IconButton(
                    icon: Text(
                      'f',
                      style: TextStyle(
                        fontSize: 40, // Make the Facebook icon larger
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      // Implement Facebook sign in logic
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to Sign Up page
                  Navigator.pushNamed(context, '/signUp');
                },
                child: Text("Don't have an account? Sign Up Now"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red[900], // Set color of the text to red
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
