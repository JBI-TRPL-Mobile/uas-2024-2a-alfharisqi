import 'package:flutter/material.dart';
import 'sign_in.dart'; // Pastikan untuk mengimpor halaman Sign In
import 'sign_up.dart'; // Pastikan untuk mengimpor halaman Sign Up

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                'assets/logo/logo.png', // Ganti dengan path logo Anda
                width: 500, // Sesuaikan ukuran logo
                height: 500,
              ),
            ),
            // Judul aplikasi
            Text(
              'Osing Pedia',
              style: TextStyle(
                fontSize: 30, // Ukuran font judul lebih besar
                fontWeight: FontWeight.bold, // Menebalkan font
                color: Colors.red[900], // Warna font judul
                letterSpacing: 1.5, // Jarak antar huruf
                fontFamily: 'Roboto', // Menggunakan font yang lebih modern
              ),
            ),
            SizedBox(height: 20), // Spasi antara judul dan tagline
            // Tagline
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Aplikasi edukasi interaktif yang menjadi pusat pembelajaran budaya Banyuwangi.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 40), // Spasi antara tagline dan tombol
            // Tombol Sign In dan Sign Up sejajar
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Sejajarkan tombol ke tengah
              children: [
                // Tombol Sign In
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), backgroundColor: Colors.red[50], // Warna latar belakang tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Sudut melengkung
                    ),
                    elevation: 5, // Memberikan efek bayangan
                    shadowColor: Colors.red.withOpacity(0.4), // Warna bayangan
                    textStyle: TextStyle(
                      fontSize: 18, // Ukuran font tombol
                      fontWeight: FontWeight.w600, // Menebalkan font tombol
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(width: 20), // Spasi antar tombol
                // Tombol Sign Up
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), backgroundColor: Colors.red[200], // Warna latar belakang tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Sudut melengkung
                    ),
                    elevation: 5, // Memberikan efek bayangan
                    shadowColor: Colors.red.withOpacity(0.4), // Warna bayangan
                    textStyle: TextStyle(
                      fontSize: 18, // Ukuran font tombol
                      fontWeight: FontWeight.w600, // Menebalkan font tombol
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
