import 'package:flutter/cupertino.dart';
import 'package:skin_first/presentation/home_page/widgets/home_calendar_day_widget.dart';

class HomeWeekCalendar extends StatelessWidget {
  const HomeWeekCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xffCAD6FF),
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
    );
  }
}
