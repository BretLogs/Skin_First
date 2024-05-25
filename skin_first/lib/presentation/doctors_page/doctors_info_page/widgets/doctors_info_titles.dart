import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorsInfoTitles extends StatelessWidget {
  const DoctorsInfoTitles({super.key, required this.header, required this.description});
  final String header;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            header,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20),
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
