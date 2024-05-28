import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_sm/services/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().cureentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(user?.email ?? "user email"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  await Auth().signOut();
                },
                child: Text('Sign Out'))
          ],
        ),
      ),
    );
  }
}
