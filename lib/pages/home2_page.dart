import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/providers/person_provider.dart';

class Home2Page extends StatelessWidget {
  const Home2Page({super.key});

  @override
  Widget build(BuildContext context) {
    PersonProvider _personProvider = Provider.of<PersonProvider>(context);
    return Scaffold(
      body: Center(
        child: Text(_personProvider.personData!.name),
      ),
    );
  }
}
