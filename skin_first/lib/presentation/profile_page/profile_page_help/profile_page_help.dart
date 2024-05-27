import 'package:flutter/material.dart';
import 'package:skin_first/data/faq.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/profile_page/profile_page_help/widgets/profile_page_help_card.dart';
import 'package:skin_first/presentation/profile_page/widgets/profile_page_selection_secondary_1.dart';

class ProfilePageHelp extends StatelessWidget {
  const ProfilePageHelp({super.key});

  @override
  Widget build(BuildContext context) {
    bool toggle = true;

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
          toggle
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(child: ElevatedButtonSecondary(onPressed: () {}, textString: 'FAQ')),
                      const SizedBox(width: 12),
                      Expanded(child: ElevatedButtonTertiary(onPressed: () {}, textString: 'Contact Us'))
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(child: ElevatedButtonTertiary(onPressed: () {}, textString: 'FAQ')),
                      const SizedBox(width: 12),
                      Expanded(child: ElevatedButtonSecondary(onPressed: () {}, textString: 'Contact Us'))
                    ],
                  ),
                ),
          toggle
              ? SingleChildScrollView(
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
                )
              : Container(),
          const SizedBox(height: 20),
          toggle
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        for (int i = 0; i < FAQ.faqLength; i++)
                          ProfilePageHelpCard(
                            faqName: FAQ.faq.toList()[i]['question']!,
                            faqDescription: FAQ.faq.toList()[i]['answer']!,
                          )
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        ProfilePageSelectionSecondary1(onPressed: () {}, icon: Icons.headphones, titleText: 'Customer Service'),
                        ProfilePageSelectionSecondary1(onPressed: () {}, icon: Icons.blur_circular_rounded, titleText: 'Website'),
                        ProfilePageSelectionSecondary1(onPressed: () {}, icon: Icons.whatshot, titleText: 'Whatsapp'),
                        ProfilePageSelectionSecondary1(onPressed: () {}, icon: Icons.facebook, titleText: 'Facebook'),
                        ProfilePageSelectionSecondary1(onPressed: () {}, icon: Icons.camera_alt_outlined, titleText: 'Instagram'),
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
