import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/profile_page/profile_page_help/widgets/profile_page_help_card.dart';

class ProfilePageHelp extends StatelessWidget {
  const ProfilePageHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help Center')),
      body: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(
                    'How can we help you?',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                    child: SearchBar(
                      leading: Icon(Icons.search),
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
                      hintText: 'Search...',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: ElevatedButtonSecondary(onPressed: () {}, textString: 'FAQ')),
                const SizedBox(width: 12),
                Expanded(child: ElevatedButtonTertiary(onPressed: () {}, textString: 'Contact Us'))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButtonSecondary(onPressed: () {}, textString: 'Popular Topic'),
                  const SizedBox(width: 8),
                  ElevatedButtonTertiary(onPressed: () {}, textString: 'General'),
                  const SizedBox(width: 8),
                  ElevatedButtonTertiary(onPressed: () {}, textString: 'Services')
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ProfilePageHelpCard(
                      faqName: 'In nisi amet id tempor',
                      faqDescription:
                          'Ut do elit consequat sunt labore et nisi dolore. Ullamco aliquip est aliqua velit non laboris non esse sint ullamco mollit laboris deserunt. Enim non quis eiusmod fugiat consequat ipsum sint et. Sit nulla commodo sint nisi exercitation. Minim dolore nostrud Lorem consectetur est aute aute.'),
                  ProfilePageHelpCard(
                    faqName: 'Et reprehenderit amet ',
                    faqDescription:
                        'Duis nostrud Lorem tempor qui exercitation. Sint consequat cillum laboris nisi fugiat officia. Minim Lorem irure dolore voluptate cupidatat pariatur nisi tempor culpa aliqua culpa duis. Dolor incididunt incididunt incididunt minim Lorem deserunt cupidatat cupidatat veniam laborum sint.',
                  ),
                  ProfilePageHelpCard(
                    faqName: 'Eu nulla elit mollit ',
                    faqDescription:
                        'Ex in aliqua ipsum dolor fugiat dolor fugiat commodo sint qui. Est occaecat sint voluptate nulla amet nulla sit. Lorem quis irure id amet sunt sunt reprehenderit. Aliquip consequat esse reprehenderit veniam.',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
