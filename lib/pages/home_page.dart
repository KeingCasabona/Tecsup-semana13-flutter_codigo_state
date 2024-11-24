import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/pages/register_page.dart';
import 'package:state/providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider _counterProvider = Provider.of<CounterProvider>(context);
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nombre:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Apellido:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Dirección:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(_counterProvider.counter.toString()),
              ElevatedButton(
                onPressed: () {
                  _counterProvider.addCounter();
                },
                child: Text('Incrementar'),
              ),
            ],
          ),
        ));
  }
}
