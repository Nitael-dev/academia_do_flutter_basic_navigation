// import 'package:academia_do_flutter_basic_navigation/screens/page_2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<int>? id;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final param =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
        setState(() {
          id = param['list'];
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1 with list ${id?[2]}'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.amber),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/page2');
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(builder: (context) => const Page2()),
            //   (route) => route.isActive,
            // );
          },
          child: const Text(
            style: TextStyle(color: Colors.white),
            'To Page 2',
          ),
        ),
      ),
    );
  }
}
