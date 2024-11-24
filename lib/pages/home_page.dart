import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/pages/home2_page.dart';
import 'package:state/pages/register_page.dart';
import 'package:state/providers/person_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //CounterProvider _counterProvider = Provider.of<CounterProvider>(context);
    PersonProvider _personProvider = Provider.of<PersonProvider>(context);

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
        child: _personProvider.checkPerson
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nombre: ${_personProvider.personData!.name}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Apellido: ${_personProvider.personData!.lastName}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dirección: ${_personProvider.personData!.address}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home2Page()));
                    },
                    child: Text('Home 2'),
                  ),
                ],
              )
            : Text('Aun no hay nadie registrado'),
      ),
    );
  }
}
