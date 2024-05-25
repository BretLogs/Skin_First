import 'package:flutter/material.dart';
import 'package:skin_first/data/dentist.dart';
import 'package:skin_first/presentation/doctors_page/doctors_list_page/widgets/doctors_list_card.dart';
import 'package:skin_first/presentation/doctors_page/widgets/doctors_page_navigation.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors'),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Column(
        children: <Widget>[
          const DoctorsPageNavigation(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                for (int i = 0; i < Dentist.imgUrlLen; i++) DoctorsListCard(imageUrl: Dentist.imgUrl[i]),
                for (int i = 0; i < Dentist.imgUrlLen; i++) DoctorsListCard(imageUrl: Dentist.imgUrl[i]),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
