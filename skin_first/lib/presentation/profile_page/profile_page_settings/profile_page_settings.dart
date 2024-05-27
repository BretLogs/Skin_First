import 'package:flutter/material.dart';
import 'package:skin_first/presentation/profile_page/widgets/profile_page_selection_primary_1.dart';

class ProfilePageSettings extends StatelessWidget {
  const ProfilePageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        children: <Widget>[
          ProfilePageSelectionPrimary1(icon: Icons.lightbulb_outline, titleText: 'Notification Settings', onPressed: () {}),
        ],
      ),
    );
  }
}
