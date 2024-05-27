import 'package:flutter/material.dart';

class NotificationPageCard extends StatelessWidget {
  const NotificationPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            maxRadius: 36,
            child: const Icon(
              Icons.calendar_month,
              size: 36,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Scheduled Appointment',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.black87),
                ),
                Text(
                  'Est ad commodo labore enim cupidatat Lorem dolore reprehenderit nostrud labore eu do irure.',
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          const Text('2hrs')
        ],
      ),
    );
  }
}
