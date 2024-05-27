import 'package:flutter/material.dart';

class ProfilePageHelpCard extends StatelessWidget {
  const ProfilePageHelpCard({super.key, required this.faqName, required this.faqDescription});
  final String faqName;
  final String faqDescription;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
            collapsedIconColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            title: Text(
              faqName,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            children: <Widget>[
              Text(
                faqDescription,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
