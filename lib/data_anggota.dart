import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'form.dart';

class DataAnggota extends StatefulWidget {
  const DataAnggota({Key? key}) : super(key: key);

  @override
  State<DataAnggota> createState() => _DataAnggota();
}

class _DataAnggota extends State<DataAnggota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 130,
                        child: Icon(
                          Icons.person,
                          size: 60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Alvito Aryo Prabowo',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '123200158',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 130,
                        child: Icon(
                          Icons.person,
                          size: 60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Alifian Zulfaani',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '123200164',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 130,
                        child: Icon(
                          Icons.person,
                          size: 60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'M Davin Fraska',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '123200171',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // LandingPage adalah halaman yang dituju
                    MaterialPageRoute(
                        builder: (context) => const LoginPage(
                              title: "Tugas2",
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: const Text(
                  'Get started',
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
