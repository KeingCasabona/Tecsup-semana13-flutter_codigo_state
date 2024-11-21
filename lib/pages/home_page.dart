import 'package:flutter/material.dart';
import 'package:state/pages/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
          },
          child: Icon(
            Icons.add,
          )),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
