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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Header image
                Image.asset('assets/header_image.png'),
                // Profile Picture
                const CircleAvatar(
                    radius: 50,
                  backgroundImage:
                      AssetImage('assets/default_profile_picture.png'),
                ),
                // Profile information
                 const ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Username: name'),
                ),
               const ListTile(
                  leading: Icon(Icons.person),
                  title:  Text('Name: name'),
                ),
               const ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Text'),
                ),

                // Course Progress
                 const ListTile(
                  leading: Icon(Icons.timeline),
                  title:  Text('Course Progress: 50%'),
                ),

                //Skills
                const ListTile(
                  leading: Icon(Icons.build),
                  title:  Text('Skills:Java,Python,JavaScript'),
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
      ),
    );
  }
}
