import 'package:flutter/material.dart';
import 'package:state/models/person_model.dart';

class PersonProvider extends ChangeNotifier {
  List<String> products = [];

  PersonModel? _personModel;
  bool get checkPerson => _personModel != null;

  PersonModel? get personData => _personModel;

  //Metoto para guardar la información de la persona:
  addNewPerson(PersonModel Model) {
    _personModel = Model;
    notifyListeners();
  }

  //Metodo para limpiar la información de la persona:
  deletePerson() {
    _personModel = null;
    notifyListeners();
  }

  //Metodo para agregar productos a la lista:
  addProduct(String product) {
    products.add(product);
    notifyListeners();
  }
}
