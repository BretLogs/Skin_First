import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_first/presentation/home_page/widgets/home_app_bar_widget.dart';
import 'package:skin_first/presentation/home_page/widgets/home_bottom_nav_bar.dart';
import 'package:skin_first/presentation/home_page/widgets/home_calendar_day_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const HomeSearchNav(),
            const SizedBox(height: 16),
            Container(
              color: const Color(0xffCAD6FF),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    HomeCalendarDayWidget(isTrue: true, day: '9'),
                    HomeCalendarDayWidget(isTrue: false, day: '10'),
                    HomeCalendarDayWidget(isTrue: false, day: '11'),
                    HomeCalendarDayWidget(isTrue: true, day: '12'),
                    HomeCalendarDayWidget(isTrue: true, day: '13'),
                    HomeCalendarDayWidget(isTrue: false, day: '14'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomAppBar(),
    );
  }
}
