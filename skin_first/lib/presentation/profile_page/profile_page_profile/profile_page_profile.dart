import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_buttons_main.dart';

class ProfilePageProfile extends StatefulWidget {
  const ProfilePageProfile({super.key});

  @override
  State<ProfilePageProfile> createState() => _ProfilePageProfileState();
}

class _ProfilePageProfileState extends State<ProfilePageProfile> {
  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2017, 9, 7, 17, 30),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('username', style: Theme.of(context).textTheme.bodySmall),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.person_outline),
                          hintText: 'John Doe',
                          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'email or mobile number',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.email_outlined),
                          // labelText: 'Email or Mobile Number',
                          hintText: 'johndoe@email.com',
                          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                        ),
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'date of birth',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextField(
                        controller: _dateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'YYYY-MM-DD',
                          prefixIcon: const Icon(Icons.calendar_month),
                          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                        ),
                        onTap: _selectDate,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButtonPrimary(onPressed: () {}, textString: 'Update Profile!')
          ],
        ),
      ),
    );
  }
}
