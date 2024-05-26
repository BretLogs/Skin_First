import 'package:flutter/material.dart';
import 'package:skin_first/data/dentist.dart';
import 'package:skin_first/presentation/home_page/widgets/home_app_bar_widget.dart';
import 'package:skin_first/presentation/home_page/widgets/home_bottom_nav_bar.dart';
import 'package:skin_first/presentation/home_page/widgets/home_dentist_card.dart';
import 'package:skin_first/presentation/home_page/widgets/home_search_nav.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const HomeAppBarWidget(),
      ),
      body: Column(
        children: <Widget>[
          const HomeSearchNav(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 12),
                  // const HomeWeekCalendar(),
                  const Text('Your Appointments'),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    height: 1,
                    color: const Color.fromARGB(255, 201, 201, 201),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TableCalendar(
                      daysOfWeekStyle: const DaysOfWeekStyle(
                        weekdayStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        weekendStyle: TextStyle(color: Color.fromARGB(100, 0, 0, 0), fontSize: 12),
                      ),
                      calendarStyle: CalendarStyle(
                        todayTextStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                        todayDecoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                  for (int i = 0; i < 5; i++) HomeDentistCard(imageUrl: Dentist.imgUrl[i]),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const HomeBottomAppBar(),
    );
  }
}
