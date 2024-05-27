import 'package:flutter/material.dart';

class NotificationPageCardUnopened extends StatelessWidget {
  const NotificationPageCardUnopened({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 36,
            child: Icon(
              Icons.calendar_month,
              size: 36,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Scheduled Appointment',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  'Eiusmod adipisicing aliquip nostrud eu minim sint cupidatat occaecat qui commodo occaecat nisi.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          Text(
            '2hrs',
            style: Theme.of(context).textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
