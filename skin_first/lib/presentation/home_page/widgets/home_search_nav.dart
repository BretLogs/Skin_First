import 'package:flutter/material.dart';
import 'package:skin_first/presentation/doctors_page/doctors_list_page/doctors_list.dart';

class HomeSearchNav extends StatelessWidget {
  const HomeSearchNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black38,
          blurRadius: 2,
          spreadRadius: 1,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => const DoctorsList()),
                        );
                      },
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
      ),
    );
  }
}
