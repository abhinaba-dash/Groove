import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  
  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loged in as:'+ user.email!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: signUserOut,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
