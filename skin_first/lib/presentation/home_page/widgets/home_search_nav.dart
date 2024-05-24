import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchNav extends StatelessWidget {
  const HomeSearchNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      // color: const Color.fromARGB(255, 190, 226, 255),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.medical_information_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                  ),
                  Text(
                    'Doctors',
                    style: Theme.of(context).textTheme.displaySmall,
                  )
                ],
              ),
              const SizedBox(width: 12),
              Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                  ),
                  Text(
                    'Favorite',
                    style: Theme.of(context).textTheme.displaySmall,
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 12, 0),
                  child: SearchBar(
                    textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black54)),
                    constraints: const BoxConstraints.expand(height: 52),
                    shadowColor: const MaterialStatePropertyAll(Colors.transparent),
                    elevation: const MaterialStatePropertyAll(1),
                    padding: const MaterialStatePropertyAll(EdgeInsets.fromLTRB(8, 0, 16, 0)),
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.white,
                        child: const Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    trailing: const <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                    ],
                    hintText: 'search...',
                    hintStyle: MaterialStatePropertyAll(Theme.of(context).textTheme.labelSmall),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
