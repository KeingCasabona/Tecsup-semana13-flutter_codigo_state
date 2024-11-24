part of 'person_bloc.dart';

class PersonEvent {}

class AddNewPerson extends PersonEvent {
  PersonModel model;

  AddNewPerson({required this.model});
}

class DeletePerson extends PersonEvent {}

class UpdatePerson extends PersonEvent {}
