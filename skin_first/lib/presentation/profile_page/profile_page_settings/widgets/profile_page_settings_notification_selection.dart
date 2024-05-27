// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfilePageSettingsNotificationSelection extends StatefulWidget {
  const ProfilePageSettingsNotificationSelection({super.key, required this.notificationName, required this.toggler});
  final String notificationName;
  final bool toggler;

  @override
  State<ProfilePageSettingsNotificationSelection> createState() => _ProfilePageSettingsNotificationSelectionState();
}

class _ProfilePageSettingsNotificationSelectionState extends State<ProfilePageSettingsNotificationSelection> {
  @override
  Widget build(BuildContext context) {
    bool toggle = widget.toggler;
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
            value: toggle,
            activeColor: Theme.of(context).colorScheme.primary,
            onChanged: (bool value) {
              setState(() {
                toggle = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
