import 'package:flutter/material.dart';

class ProfilePageSelectionSecondary extends StatelessWidget {
  const ProfilePageSelectionSecondary({super.key, required this.icon, required this.titleText, required this.onPressed});
  final Function() onPressed;
  final IconData icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ),
        onPressed: onPressed,
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
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                  ),
                ],
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
