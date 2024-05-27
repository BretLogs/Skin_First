import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/home_page/widgets/home_bottom_nav_bar.dart';
import 'package:skin_first/presentation/profile_page/profile_page_privacy_policy/profile_page_privacy_policy.dart';
import 'package:skin_first/presentation/profile_page/profile_page_profile/profile_page_profile.dart';
import 'package:skin_first/presentation/profile_page/profile_page_settings/profile_page_settings.dart';
import 'package:skin_first/presentation/profile_page/widgets/profile_page_selection_primary.dart';
import 'package:skin_first/presentation/profile_page/widgets/profile_page_selection_secondary.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Center(
              child: Stack(alignment: Alignment.bottomRight, children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                )
              ]),
            ),
            const SizedBox(height: 12),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black87,
                  ),
            ),
            ProfilePageSelectionPrimary(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ProfilePageProfile()));
                },
                icon: Icons.person,
                titleText: 'Profile'),
            ProfilePageSelectionPrimary(onPressed: () {}, icon: Icons.favorite, titleText: 'Favorite'),
            ProfilePageSelectionPrimary(onPressed: () {}, icon: Icons.wallet, titleText: 'Payment Method'),
            ProfilePageSelectionPrimary(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ProfilePagePrivacyPolicy()));
                },
                icon: Icons.lock_outline,
                titleText: 'Privacy Policy'),
            ProfilePageSelectionPrimary(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ProfilePageSettings()));
                },
                icon: Icons.settings,
                titleText: 'Settings'),
            ProfilePageSelectionPrimary(onPressed: () {}, icon: CupertinoIcons.question, titleText: 'Help'),
            const SizedBox(height: 40),
            ProfilePageSelectionSecondary(onPressed: () {}, icon: Icons.logout, titleText: 'Logout'),
            ProfilePageSelectionSecondary(onPressed: () {}, icon: Icons.replay_circle_filled, titleText: 'Change User')
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomAppBar(),
    );
  }
}
