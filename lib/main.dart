
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      home: const ProfilePage(),
    );
  }
}

// Profile page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top navigation bar
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
      ),

      // Main page content
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            // Profile picture
            const CircleAvatar(
              radius: 85,
              backgroundImage: AssetImage(
                'assets/images/gaosu.png',
              ),
            ),

            const SizedBox(height: 15),

            // Student name
            const Text(
              'GAOSU',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

           // Student status
const Chip(
  backgroundColor: Colors.grey,
  avatar: Icon(
    Icons.school,
    size: 16,
    color: Colors.amber,
  ),
  label: Text(
    'Student',
    style: TextStyle(
      fontSize: 13,
      color: Colors.black87,
    ),
  ),
  padding: EdgeInsets.symmetric(
    horizontal: 6,
    vertical: 2,
  ),
),
          ],
        ),
      ),
    );
  }
}
