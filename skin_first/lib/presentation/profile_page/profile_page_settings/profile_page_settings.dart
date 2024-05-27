import 'package:flutter/material.dart';
import 'package:skin_first/presentation/profile_page/widgets/profile_page_selection_secondary_1.dart';

class ProfilePageSettings extends StatelessWidget {
  const ProfilePageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        children: <Widget>[
          // ProfilePageSelectionSecondary1(icon: Icons.lightbulb_outline, titleText: 'Notification Settings', onPressed: () {}),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Theme.of(context).colorScheme.primary),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                  collapsedIconColor: Theme.of(context).colorScheme.primary,
                  iconColor: Theme.of(context).colorScheme.primary,
                  leading: const Icon(Icons.favorite),
                  title: Text(
                    'Service',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.black87),
                  ),
                  children: <Widget>[
                    ProfilePageSelectionSecondary1(icon: Icons.key_outlined, titleText: 'Password Manager', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),

          ProfilePageSelectionSecondary1(icon: Icons.key_outlined, titleText: 'Password Manager', onPressed: () {}),
          ProfilePageSelectionSecondary1(icon: Icons.person_outline, titleText: 'Notification Settings', onPressed: () {}),
        ],
      ),
    );
  }
}
