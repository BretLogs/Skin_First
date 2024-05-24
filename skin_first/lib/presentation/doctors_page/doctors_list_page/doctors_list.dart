import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/elevated_buttons_main.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/buttons/text_button_primary.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctors',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff2260FF),
              ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('Sort By'),
              ElevatedButtonSecondary(
                onPressed: () {},
                textString: 'A - Z',
              ),
              IconButtonPrimary(
                onPressed: () {},
                icon: Icons.abc_outlined,
              ),
            ],
          )
        ],
      ),
    );
  }
}
