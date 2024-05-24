import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}