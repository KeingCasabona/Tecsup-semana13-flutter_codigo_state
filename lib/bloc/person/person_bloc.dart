import 'package:flutter_bloc/flutter_bloc.dart';
part 'person_event.dart';
part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonState()) {
    on<AddNewPerson>(
      (event, emit) {
        print('Guardar');
      },
    );

    on<DeletePerson>(
      (event, emit) {
        print('Eliminar');
      },
    );

    on<UpdatePerson>(
      (event, emit) {
        print('Hola');
      },
    );
  }
}
