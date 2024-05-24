import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDentistCard extends StatelessWidget {
  const HomeDentistCard({super.key, required this.imageUrl});

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
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              color: Colors.white,
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
                              const SizedBox(width: 8),
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
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  color: Colors.white,
                                  child: const Icon(
                                    Icons.question_mark_outlined,
                                    color: Color(0xff2260FF),
                                    size: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  color: Colors.white,
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Color(0xff2260FF),
                                    size: 24,
                                  ),
                                ),
                              ),
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
