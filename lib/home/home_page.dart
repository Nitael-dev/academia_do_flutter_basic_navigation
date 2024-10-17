// import 'package:academia_do_flutter_basic_navigation/screens/page_1.dart';
// import 'package:academia_do_flutter_basic_navigation/screens/page_2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              image: const DecorationImage(
                  image: AssetImage(
                      'assets/Captura de tela 2024-08-18 174052.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(-10, -10),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/page1',
                      arguments: {
                        'list': [0, 1, 2, 3, 4]
                      },
                    );
                  },
                  child: const Text(
                    style: TextStyle(color: Colors.white),
                    'To Page 1',
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/page2');
                  },
                  child: const Text(
                    style: TextStyle(color: Colors.white),
                    'To Page 2',
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/page3');
                  },
                  child: const Text(
                    style: TextStyle(color: Colors.white),
                    'To Page 3',
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/page4');
                  },
                  child: const Text(
                    style: TextStyle(color: Colors.white),
                    'To Page 4',
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
