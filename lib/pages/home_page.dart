import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 247, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 7, 70),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
            color: Colors.green, // Set the color of the icon
          )
        ],
      ),
      body: Center(
          child: Text(
        "LOGGED IN AS: ${user.email!}",
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
