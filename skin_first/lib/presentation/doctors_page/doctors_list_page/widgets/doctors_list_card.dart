import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_secondary.dart';
import 'package:skin_first/presentation/buttons/icon_button_secondary.dart';
import 'package:skin_first/presentation/doctors_page/doctors_info_page/doctors_info_page.dart';

class DoctorsListCard extends StatelessWidget {
  const DoctorsListCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: const Color.fromARGB(63, 143, 169, 255),
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      imageUrl,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Dr. Olivia Turner, M.D.',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20),
                                  ),
                                  Text(
                                    'Endodontics',
                                    style: Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ElevatedButtonSecondary(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<dynamic>(builder: (BuildContext context) => const DoctorsInfoPage()),
                                    );
                                  },
                                  textString: 'Info'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IconButtonSecondary(
                                onPressed: () {},
                                icon: CupertinoIcons.calendar,
                              ),
                              IconButtonSecondary(
                                onPressed: () {},
                                icon: CupertinoIcons.exclamationmark,
                              ),
                              IconButtonSecondary(
                                onPressed: () {},
                                icon: CupertinoIcons.question,
                              ),
                              IconButtonSecondary(
                                onPressed: () {},
                                icon: CupertinoIcons.heart,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
