import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  late String centeredText;

  UserProvider({this.centeredText = 'Hello'});

  void changeCenteredText({required newCenteredText}){
    centeredText = newCenteredText;
    notifyListeners();
  }
}