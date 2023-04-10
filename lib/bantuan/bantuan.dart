import 'package:flutter/material.dart';
import 'package:flutter_application1/bantuan/panduan.dart';
import 'package:flutter_application1/login.dart';
import '../auth_service.dart';

class Bantuan extends StatefulWidget {
  const Bantuan({Key? key}) : super(key: key);

  @override
  State<Bantuan> createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => PanduanPage()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: const Text(
                  'Panduan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  exit(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void exit(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text("Log Out"),
    content: Container(
      child: Text("Apakah Anda Yakin Ingin Log Out ?"),
    ),
    actions: [
      TextButton(
        child: Text('Yes'),
        onPressed: () async {
          await AuthService.logout();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => LoginPage()));
        },
      ),
      TextButton(
        child: Text('No'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
  showDialog(context: context, builder: (context) => alert);
  return;
}
