import 'package:flutter/material.dart';

class DoctorsFavoriteServicesCard extends StatelessWidget {
  const DoctorsFavoriteServicesCard({super.key, required this.serviceName, required this.serviceDescription});
  final String serviceName;
  final String serviceDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
            collapsedIconColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            leading: const Icon(Icons.favorite),
            title: Text(
              serviceName,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            children: <Widget>[
              Text(
                serviceDescription,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
