import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/buttons/icon_button_tertiary.dart';
import 'package:skin_first/presentation/doctors_page/doctors_favorite_page/doctors_favorite_page.dart';
import 'package:skin_first/presentation/doctors_page/doctors_list_page/doctors_list.dart';
import 'package:skin_first/presentation/doctors_page/doctors_rating_page/doctors_rating_page.dart';

class DoctorsPageNavigation extends StatelessWidget {
  const DoctorsPageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          ElevatedButtonSecondary(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const DoctorsList()));
              },
              textString: 'A - Z'),
          IconButtonPrimary(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const DoctorsRatingPage()));
              },
              icon: Icons.star_border_outlined),
          IconButtonPrimary(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const DoctorsFavoritePage()));
              },
              icon: Icons.favorite_border_outlined),
          IconButtonPrimary(onPressed: () {}, icon: Icons.female_outlined),
          IconButtonPrimary(onPressed: () {}, icon: Icons.male_outlined),
        ],
      ),
    );
  }
}
