import 'package:flutter/material.dart';

class ProfilePageSelectionPrimary extends StatelessWidget {
  const ProfilePageSelectionPrimary({super.key, required this.icon, required this.titleText, required this.isLogout});
  final IconData icon;
  final String titleText;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle;
    if (!isLogout) {
      buttonStyle = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      );
    } else {
      buttonStyle = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: TextButton(
        style: buttonStyle,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    icon,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    titleText,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ],
              ),
              if (isLogout) Container() else const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
