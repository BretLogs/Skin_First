import 'package:flutter/material.dart';
import 'package:skin_first/data/dentist.dart';
import 'package:skin_first/presentation/doctors_page/doctors_rating_page/widgets/doctors_rating_card.dart';
import 'package:skin_first/presentation/doctors_page/widgets/doctors_page_navigation.dart';

class DoctorsRatingPage extends StatelessWidget {
  const DoctorsRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating'),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const DoctorsPageNavigation(),
            for (int i = 0; i < Dentist.imgUrlLen; i++) DoctorsRatingCard(imageUrl: Dentist.imgUrl[i])
          ],
        ),
      ),
    );
  }
}
