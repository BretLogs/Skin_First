import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_first/presentation/home_page/widgets/home_app_bar_widget.dart';
import 'package:skin_first/presentation/home_page/widgets/home_bottom_nav_bar.dart';
import 'package:skin_first/presentation/home_page/widgets/home_search_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const HomeAppBarWidget(),
      ),
      body: const HomeSearchNav(),
      bottomNavigationBar: const HomeBottomAppBar(),
    );
  }
}
