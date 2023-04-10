import 'package:flutter/material.dart';
import 'menu.dart';
import 'bantuan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  Widget bodyFunction() {
    switch (_page) {
      case 0:
        return MenuPage();
        break;
      case 1:
        return Bantuan();
        break;
      default:
        return Container(color: Colors.white);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "MENU",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: bodyFunction(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Halaman Utama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
        ],
        currentIndex: _page,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
