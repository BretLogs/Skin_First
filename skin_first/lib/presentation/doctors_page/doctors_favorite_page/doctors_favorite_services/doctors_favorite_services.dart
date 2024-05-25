import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_first/data/services.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/doctors_page/doctors_favorite_page/doctors_favorite_list/doctors_favorite_page.dart';
import 'package:skin_first/presentation/doctors_page/doctors_favorite_page/doctors_favorite_list/widgets/doctors_favorite_card.dart';
import 'package:skin_first/presentation/doctors_page/doctors_favorite_page/doctors_favorite_services/widgets/doctors_favorite_services_card.dart';
import 'package:skin_first/presentation/doctors_page/widgets/doctors_page_navigation.dart';

class DoctorsFavoriteServices extends StatelessWidget {
  const DoctorsFavoriteServices({super.key});

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
                Expanded(
                    child: ElevatedButtonTertiary(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const DoctorsFavoritePage()));
                        },
                        textString: 'Doctors')),
                const SizedBox(width: 12),
                Expanded(
                    child: ElevatedButtonSecondary(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const DoctorsFavoriteServices()));
                        },
                        textString: 'Services'))
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  for (int i = 0; i < Services().servicesCount; i++)
                    DoctorsFavoriteServicesCard(
                      serviceName: Services.services.toList()[i]['title']!,
                      serviceDescription: Services.services.toList()[i]['service']!,
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
