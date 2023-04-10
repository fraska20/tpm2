import 'package:flutter/material.dart';
import 'form.dart';

void main() => runApp(const MyApp());

ColorScheme defaultColorScheme = const ColorScheme(
  primaryVariant: Color(0xffBB86FC),
  primary: Color(0xffBB86FC),
  secondaryVariant: Color(0xff03DAC6),
  secondary: Color(0xff03DAC6),
  surface: Color(0xff181818),
  background: Color(0xff121212),
  error: Color(0xffCF6679),
  onPrimary: Color(0xff000000),
  onSecondary: Color(0xff000000),
  onSurface: Color(0xffffffff),
  onBackground: Color(0xffffffff),
  onError: Color(0xff000000),
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: defaultColorScheme,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: "Tugas4",),
    );
  }
}

