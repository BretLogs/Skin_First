import 'package:flutter/material.dart';
import 'package:skin_first/presentation/notification_page/widgets/notification_page_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NotificationPageCard(),
          ],
        ),
      ),
    );
  }
}
