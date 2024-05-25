import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';

class DoctorsRatingPage extends StatelessWidget {
  const DoctorsRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rating',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff2260FF),
              ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              ElevatedButtonTertiary(onPressed: () {}, textString: 'A - Z'),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              IconButtonPrimary(onPressed: () {}, icon: Icons.favorite_border_outlined),
              IconButtonPrimary(onPressed: () {}, icon: Icons.female_outlined),
              IconButtonPrimary(onPressed: () {}, icon: Icons.male_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
