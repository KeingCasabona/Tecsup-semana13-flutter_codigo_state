import 'package:flutter/material.dart';
import 'package:state/models/person_model.dart';

class PersonProvider extends ChangeNotifier {
  PersonModel? _personModel;
  bool get checkPerson => _personModel != null;

  PersonModel? get personData => _personModel;

  //Metoto para guardar la información de la persona:
  addNewPerson(PersonModel Model) {
    _personModel = Model;
    notifyListeners();
  }
}
