import 'package:flutter/material.dart';

class ProfilePagePrivacyPolicy extends StatelessWidget {
  const ProfilePagePrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Last Update: 08/28/2024', style: Theme.of(context).textTheme.titleSmall),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  'Duis velit velit laboris ipsum cupidatat occaecat. Dolore nostrud sint dolor in consequat ex elit labore elit tempor aliqua nulla dolor. Id eu nulla Lorem Lorem reprehenderit aliqua ea excepteur minim commodo aute. Esse nulla Lorem aliqua nisi laborum Lorem enim. Enim incididunt et anim ad deserunt ut Lorem et officia fugiat esse sit eu sunt.'),
              const SizedBox(height: 8),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  'Enim ut commodo commodo nulla elit dolor dolore. Aliqua et veniam duis aliquip fugiat commodo labore adipisicing cillum consectetur. Dolor voluptate esse quis eu qui aliqua labore cupidatat. Eu sit culpa est ex minim anim aliqua voluptate aute. Adipisicing consectetur ullamco consequat excepteur. Excepteur nulla aute ipsum dolore eiusmod aliqua dolore dolore. Incididunt occaecat nulla in occaecat sunt proident nisi.'),
              const SizedBox(height: 24),
              Text('Terms and Conditions', style: Theme.of(context).textTheme.titleSmall),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  '1. Pariatur laborum laborum qui anim sunt ad ipsum. Sunt sint excepteur eu consectetur do excepteur veniam. Aliquip officia do magna ut ea laborum officia labore tempor. In laboris eu consequat ullamco et. Est nostrud proident eiusmod pariatur laboris consequat aute.'),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  '2. Voluptate amet est tempor eiusmod velit dolor ipsum veniam excepteur exercitation. Fugiat ea labore dolor esse pariatur et voluptate veniam. In esse velit cillum veniam mollit non reprehenderit fugiat. Adipisicing Lorem anim esse sint minim id enim pariatur excepteur fugiat culpa enim minim.'),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  '3. Aute velit magna reprehenderit exercitation dolor occaecat laborum excepteur laboris culpa qui ut. Labore exercitation veniam laborum enim incididunt Lorem magna. Cupidatat ex aliqua elit id. Sit incididunt aliqua exercitation sint adipisicing tempor minim minim quis aliqua excepteur quis. Culpa eu aliqua eiusmod nulla ipsum occaecat non nostrud mollit duis mollit non. Velit non dolor ipsum ad sit nisi Lorem.')
            ],
          ),
        ),
      ),
    );
  }
}
