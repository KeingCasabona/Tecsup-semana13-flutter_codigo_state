import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/bloc/person/person_bloc.dart';
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
      body: Center(
        child: BlocBuilder<PersonBloc, PersonState>(
          builder: (BuildContext context, PersonState state) {
            return state.personModel != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nombre: ${state.personModel!.name}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Apellido: ${state.personModel!.lastName}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Dirección: ${state.personModel!.address}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                : Text('No hay nada registrado');
          },
        ),
      ),
    );
  }
}
