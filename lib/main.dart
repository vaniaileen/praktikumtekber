import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AboutPage',
      theme: ThemeData(
        primaryColor: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFF5F5DC),
        fontFamily: 'DM Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('praktikumtekber/assets/foto.jpg'), // Replace with your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5DC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Picture with rounded square shape
                ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Adjust radius as needed for rounded corners
                  child: Image.asset(
                    'praktikumtekber/assets/foto.jpg', // Your image path
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                // Full Name
                const Text(
                  'Vania Aileen Tertiabudi',
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 171, 111, 28)
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),

                // NRP
                const Text(
                  '5026221108',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 171, 111, 28),
                  ),
                ),
                const SizedBox(height: 16),

                // Fun Fact
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 166, 130, 38),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Fun Fact:\nGabisa makan daging kalo masih dalam tekstur asli,\n jadi mau dipaksa gmn pun ga pernah makan rendang.\n Enakan makan ayam gais.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFF5F5DC),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                // Meme Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Adjust radius as needed for rounded corners
                  child: Image.asset(
                    'praktikumtekber/assets/meme.jpg', // Your image path
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}