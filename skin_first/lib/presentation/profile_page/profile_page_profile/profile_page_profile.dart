import 'package:flutter/material.dart';

class ProfilePageProfile extends StatelessWidget {
  const ProfilePageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Center(
            child: Stack(alignment: Alignment.bottomRight, children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_outlined,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
