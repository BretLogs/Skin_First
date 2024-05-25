import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/doctors_page/doctors_info_page/widgets/doctors_info_card.dart';
import 'package:skin_first/presentation/doctors_page/doctors_info_page/widgets/doctors_info_titles.dart';

class DoctorsInfoPage extends StatelessWidget {
  const DoctorsInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctor Info',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            const DoctorsInfoCard(),
            const DoctorsInfoTitles(
              header: 'Profile',
              description:
                  'Eiusmod id aliqua ad nostrud id ipsum ea ut consectetur officia. Ea dolore consequat ullamco fugiat ullamco adipisicing veniam quis. Aliqua labore duis occaecat aliqua do in deserunt anim.',
            ),
            const DoctorsInfoTitles(
              header: 'Career Path',
              description:
                  'Ipsum in deserunt nisi ea. Nisi exercitation pariatur nisi do ex. Ipsum officia Lorem eiusmod eiusmod irure in dolore incididunt.',
            ),
            const DoctorsInfoTitles(
              header: 'Highlights',
              description:
                  'Consectetur nulla anim proident proident incididunt. Eu enim nisi et mollit aliqua dolor officia irure. Amet ad ea ut mollit consequat proident nisi non in voluptate deserunt proident.',
            ),
          ],
        ),
      ),
    );
  }
}
