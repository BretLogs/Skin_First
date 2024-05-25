import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/icon_button_secondary.dart';

class DoctorsInfoCard extends StatelessWidget {
  const DoctorsInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'assets/images/model.jpg';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          imageUrl,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: Theme.of(context).colorScheme.primary,
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                const Icon(
                                  CupertinoIcons.check_mark_circled_solid,
                                  color: Colors.white,
                                  size: 36,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '15 years',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'experience',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            color: Theme.of(context).colorScheme.primary,
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            child: Text(
                              'Focus: on providing exceptional dental care with a specialization in cosmetic and restorative dentistry. We are dedicated to enhancing your smile and ensuring optimal oral health through advanced techniques and personalized treatments.',
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Dr. Angelica Krisha Cabe, M.D.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    const Text(
                      'Periodontics',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.star,
                            color: Color(0xff2260FF),
                          ),
                          Text(
                            '5.5',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.message_outlined,
                            color: Color(0xff2260FF),
                          ),
                          Text(
                            '40',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.access_time,
                            color: Color(0xff2260FF),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Mon-Sat / 9:00AM - 5:00PM',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff2260FF)),
                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                    ),
                    icon: const Icon(Icons.calendar_month),
                    label: Text(
                      'Schedule',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(width: 12),
                      IconButtonSecondary(onPressed: () {}, icon: Icons.star_border_outlined),
                      IconButtonSecondary(onPressed: () {}, icon: Icons.favorite_border_outlined),
                      IconButtonSecondary(onPressed: () {}, icon: Icons.female_outlined),
                      IconButtonSecondary(onPressed: () {}, icon: Icons.male_outlined),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
