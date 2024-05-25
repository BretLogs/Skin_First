import 'package:flutter/material.dart';
import 'package:skin_first/presentation/doctors_page/doctors_info_page/widgets/doctors_info_card.dart';
import 'package:skin_first/presentation/doctors_page/doctors_info_page/widgets/doctors_info_titles.dart';
import 'package:skin_first/presentation/doctors_page/widgets/doctors_page_navigation.dart';

class DoctorsInfoPage extends StatelessWidget {
  const DoctorsInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Info'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DoctorsPageNavigation(),
            DoctorsInfoCard(),
            DoctorsInfoTitles(
              header: 'Profile',
              description:
                  'Eiusmod id aliqua ad nostrud id ipsum ea ut consectetur officia. Ea dolore consequat ullamco fugiat ullamco adipisicing veniam quis. Aliqua labore duis occaecat aliqua do in deserunt anim.',
            ),
            DoctorsInfoTitles(
              header: 'Career Path',
              description:
                  'Ipsum in deserunt nisi ea. Nisi exercitation pariatur nisi do ex. Ipsum officia Lorem eiusmod eiusmod irure in dolore incididunt.',
            ),
            DoctorsInfoTitles(
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
