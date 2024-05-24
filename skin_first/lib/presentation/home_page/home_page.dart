import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/profile_pic.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hi, Welcome Back',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12, color: const Color(0xff2260FF)),
                    ),
                    Text(
                      'John Doe',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black87),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                  style: const ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Color(0xff2260FF)),
                    // backgroundColor: MaterialStatePropertyAll(
                    //   Color.fromARGB(255, 173, 197, 255),
                    // ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined),
                  style: const ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Color(0xff2260FF)),
                    // backgroundColor: MaterialStatePropertyAll(
                    //   Color.fromARGB(255, 138, 173, 255),
                    // ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(),
      bottomNavigationBar: Container(
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
              onPressed: () {},
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
