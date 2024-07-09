import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Header image wrapped in a Container with specified dimensions
                      SizedBox(
                        width: 250,
                        height: 150,
                        child: Image.asset(
                          'lib/images/header_image.png',
                          fit: BoxFit
                              .cover, // Adjust the image to cover the container
                        ),
                      ),
                      // Profile Picture
                      const SizedBox(height: 50),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            'lib/images/default_profile_picture.png'),
                      ),
                      // Profile information
                      const ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Username: name'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Name: name'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.info),
                        title: Text('Text'),
                      ),
                      // Course Progress
                      const ListTile(
                        leading: Icon(Icons.timeline),
                        title: Text('Course Progress: 50%'),
                      ),
                      // Skills
                      const ListTile(
                        leading: Icon(Icons.build),
                        title: Text('Skills: Java, Python, JavaScript'),
                      ),
                      // Button to edit profile
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
