import 'package:flutter/material.dart';

class ChatsPageChat extends StatelessWidget {
  const ChatsPageChat({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/profile_pic.jpg',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Israel Breta',
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
            Text(
              '2hrs',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
