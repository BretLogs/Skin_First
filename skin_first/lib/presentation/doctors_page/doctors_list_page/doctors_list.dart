import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_buttons_main.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/buttons/text_button_primary.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctors',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff2260FF),
              ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sort By',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 12),
                ElevatedButtonSecondary(onPressed: () {}, textString: 'A - Z'),
                IconButtonPrimary(onPressed: () {}, icon: Icons.star_border_outlined),
                IconButtonPrimary(onPressed: () {}, icon: Icons.favorite_border_outlined),
                IconButtonPrimary(onPressed: () {}, icon: Icons.female_outlined),
                IconButtonPrimary(onPressed: () {}, icon: Icons.male_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
