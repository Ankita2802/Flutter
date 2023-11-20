import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserChangeScreen extends StatefulWidget {
  const UserChangeScreen({super.key});

  @override
  State<UserChangeScreen> createState() => _UserChangeScreenState();
}

class _UserChangeScreenState extends State<UserChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail Screen'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, user) {
                final username = ref.watch(userchanageprovider);
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(username.name),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ref
                              .read(userchanageprovider.notifier)
                              .setname('Sneharsh');
                        },
                        child: Icon(Icons.send),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
