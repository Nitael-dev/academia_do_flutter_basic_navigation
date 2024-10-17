import 'package:academia_do_flutter_basic_navigation/home/home_page.dart';
import 'package:academia_do_flutter_basic_navigation/screens/page_1.dart';
import 'package:academia_do_flutter_basic_navigation/screens/page_2.dart';
import 'package:academia_do_flutter_basic_navigation/screens/page_3.dart';
import 'package:academia_do_flutter_basic_navigation/screens/page_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (_) => const HomePage(title: 'Topo do app'),
        '/page1': (_) => const Page1(),
        '/page2': (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
