import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Conteudo da page 4'),
      ),
    );
  }
}
