import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/home_page/home_page.dart';
import 'package:skin_first/presentation/profile_page/profile_page.dart';

class HomeBottomAppBar extends StatelessWidget {
  const HomeBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const HomePage()));
            },
            icon: const Icon(Icons.home_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const ProfilePage()));
            },
            icon: const Icon(Icons.person_outlined),
          ),
        ],
      ),
    );
  }
}
