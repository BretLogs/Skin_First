import 'package:flutter/material.dart';
import 'package:skin_first/data/dentist.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/doctors_page/doctors_favorite_page/widgets/doctors_favorite_card.dart';
import 'package:skin_first/presentation/doctors_page/widgets/doctors_page_navigation.dart';

class DoctorsFavoritePage extends StatelessWidget {
  const DoctorsFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Column(
        children: <Widget>[
          const DoctorsPageNavigation(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: ElevatedButtonSecondary(onPressed: () {}, textString: 'Doctors')),
                const SizedBox(width: 12),
                Expanded(child: ElevatedButtonTertiary(onPressed: () {}, textString: 'Services'))
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                for (int i = 0; i < Dentist.imgUrlLen; i++) DoctorsFavoriteCard(imageUrl: Dentist.imgUrl[i]),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
