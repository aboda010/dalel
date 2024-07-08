import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          actions: [
            IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                custemPushReplaceNavigate(context, signInView);
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: const Center(
          child: Text('HomeView'),
        ));
  }
}
