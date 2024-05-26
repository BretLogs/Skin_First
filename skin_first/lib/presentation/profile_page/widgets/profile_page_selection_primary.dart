import 'package:flutter/material.dart';

class ProfilePageSelectionPrimary extends StatelessWidget {
  const ProfilePageSelectionPrimary({super.key, required this.icon, required this.titleText});
  final IconData icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextButton(
        onPressed: () {},
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
            const Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
