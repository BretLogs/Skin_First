import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/doctors_page/doctors_list_page/widgets/doctors_list_card.dart';
import 'package:skin_first/presentation/doctors_page/doctors_rating_page/doctors_rating_page.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageNetworks = <String>[
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1554151228-14d9def656e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGVyc29ufGVufDB8fDB8fHww'
    ];
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
                IconButtonPrimary(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const DoctorsRatingPage(),
                          ));
                    },
                    icon: Icons.star_border_outlined),
                IconButtonPrimary(onPressed: () {}, icon: Icons.favorite_border_outlined),
                IconButtonPrimary(onPressed: () {}, icon: Icons.female_outlined),
                IconButtonPrimary(onPressed: () {}, icon: Icons.male_outlined),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                for (int i = 0; i < imageNetworks.length; i++) DoctorsListCard(imageUrl: imageNetworks[i]),
                for (int i = 0; i < imageNetworks.length; i++) DoctorsListCard(imageUrl: imageNetworks[i]),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
