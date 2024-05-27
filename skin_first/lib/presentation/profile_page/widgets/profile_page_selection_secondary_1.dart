import 'package:flutter/material.dart';

class ProfilePageSelectionSecondary1 extends StatelessWidget {
  const ProfilePageSelectionSecondary1({super.key, required this.onPressed, required this.icon, required this.titleText});
  final Function() onPressed;
  final IconData icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: TextButton(
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
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.black87),
                  ),
                ],
              ),
              // const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
