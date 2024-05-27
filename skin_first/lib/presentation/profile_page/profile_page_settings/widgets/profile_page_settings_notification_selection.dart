import 'package:flutter/material.dart';

class ProfilePageSettingsNotificationSelection extends StatefulWidget {
  const ProfilePageSettingsNotificationSelection({super.key, required this.notificationName});
  final String notificationName;

  @override
  State<ProfilePageSettingsNotificationSelection> createState() => _ProfilePageSettingsNotificationSelectionState();
}

class _ProfilePageSettingsNotificationSelectionState extends State<ProfilePageSettingsNotificationSelection> {
  bool toggler = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(widget.notificationName),
        ),
        Transform.scale(
          scale: .7,
          child: Switch(
            value: toggler,
            activeColor: Theme.of(context).colorScheme.primary,
            onChanged: (bool value) {
              setState(() {
                toggler = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
