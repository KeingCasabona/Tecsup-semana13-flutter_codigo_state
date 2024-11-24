import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/pages/home_page.dart';
import 'package:state/providers/counter_provider.dart';
import 'package:state/providers/person_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => CounterProvider()),
        ChangeNotifierProvider(
            create: (BuildContext context) => PersonProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StateApp',
        home: HomePage(),
      ),
    );
  }
}
