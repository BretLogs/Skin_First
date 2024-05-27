import 'package:flutter/material.dart';
import 'package:skin_first/presentation/profile_page/profile_page_settings/profile_page_password_manager.dart';
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
                    leading: const Icon(Icons.lightbulb_outline),
                    title: Text(
                      'Notification Settings',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.black87),
                    ),
                    children: const <Widget>[
                      ProfilePageSettingsNotificationSelection(notificationName: 'General Notification', toggler: true),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Sound', toggler: true),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Sound Call', toggler: false),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Vibrate', toggler: true),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Special Offers', toggler: false),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Payments', toggler: true),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Promo and Discount', toggler: false),
                      ProfilePageSettingsNotificationSelection(notificationName: 'Cashback', toggler: false),
                    ],
                  ),
                ),
              ),
            ),
            ProfilePageSelectionSecondary1(
                icon: Icons.key_outlined,
                titleText: 'Password Manager',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ProfilePagePasswordManager()));
                }),
            ProfilePageSelectionSecondary1(icon: Icons.person_outline, titleText: 'Delete Account', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
