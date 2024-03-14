import 'package:flutter/material.dart';
import 'package:kamus_app/screen_page/page_home.dart';
import 'package:kamus_app/screen_page/page_login.dart';
import 'package:kamus_app/utils/check_session.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  String? id, fullname, username, email;

  Future getSession() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      id = pref.getString("id") ?? '';
      fullname = pref.getString("fullname") ?? '';
      username = pref.getString("userName") ?? '';
      email = pref.getString("email") ?? '';
      // print('username $username');
      // print('fullname $fullname');
      // print('id $id');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSession();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const PageHome()),
                (route) => false);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fullname: $fullname',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 15.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'ID: $id',
              style: const TextStyle(fontSize: 15.0),
            ),
            const SizedBox(height: 30.0),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  session.clearSession();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageLogin()),
                      (route) => false);
                },
                icon: const Icon(Icons.logout_rounded),
                label: const Text('Logout'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
