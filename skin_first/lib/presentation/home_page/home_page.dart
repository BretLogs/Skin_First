import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_first/presentation/home_page/widgets/home_app_bar_widget.dart';
import 'package:skin_first/presentation/home_page/widgets/home_bottom_nav_bar.dart';
import 'package:skin_first/presentation/home_page/widgets/home_calendar_day_widget.dart';
import 'package:skin_first/presentation/home_page/widgets/home_dentist_card.dart';
import 'package:skin_first/presentation/home_page/widgets/home_search_nav.dart';
import 'package:skin_first/presentation/home_page/widgets/home_week_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageNetworks = <String>[
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1554151228-14d9def656e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGVyc29ufGVufDB8fDB8fHww'
    ];
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
                  const SizedBox(height: 8),
                  const HomeWeekCalendar(),
                  for (int i = 0; i < 5; i++)
                    HomeDentistCard(
                      imageUrl: imageNetworks[i],
                    ),
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
