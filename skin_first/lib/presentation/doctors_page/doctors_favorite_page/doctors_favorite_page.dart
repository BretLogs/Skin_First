import 'package:flutter/material.dart';
import 'package:skin_first/presentation/home_page/widgets/home_app_bar_widget.dart';

class DoctorsFavoritePage extends StatelessWidget {
  const DoctorsFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
    );
  }
}
