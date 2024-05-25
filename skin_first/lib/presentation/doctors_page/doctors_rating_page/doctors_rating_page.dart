import 'package:flutter/material.dart';
import 'package:skin_first/presentation/doctors_page/doctors_rating_page/widgets/doctors_rating_card.dart';
import 'package:skin_first/presentation/doctors_page/widgets/doctors_page_navigation.dart';

class DoctorsRatingPage extends StatelessWidget {
  const DoctorsRatingPage({super.key});

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
            for (int i = 0; i < imageNetworks.length; i++) DoctorsRatingCard(imageUrl: imageNetworks[i])
          ],
        ),
      ),
    );
  }
}
