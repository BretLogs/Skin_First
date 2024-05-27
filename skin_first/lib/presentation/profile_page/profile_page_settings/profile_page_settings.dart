import 'package:flutter/material.dart';
import 'package:skin_first/presentation/profile_page/profile_page_settings/widgets/profile_page_settings_notification_selection.dart';
import 'package:skin_first/presentation/profile_page/widgets/profile_page_selection_secondary_1.dart';

class ProfilePageSettings extends StatefulWidget {
  const ProfilePageSettings({super.key});

  @override
  State<ProfilePageSettings> createState() => _ProfilePageSettingsState();
}

class _ProfilePageSettingsState extends State<ProfilePageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
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
                    children: const <Widget>[
                      ProfilePageSettingsNotificationSelection(notificationName: 'General Notification'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Sound'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Sound Call'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Vibrate'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Special Offers'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Payments'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Promo and Discount'),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Cashback'),
                    ],
                  ),
                ),
              ),
            ),
            ProfilePageSelectionSecondary1(icon: Icons.key_outlined, titleText: 'Password Manager', onPressed: () {}),
            ProfilePageSelectionSecondary1(icon: Icons.person_outline, titleText: 'Notification Settings', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
