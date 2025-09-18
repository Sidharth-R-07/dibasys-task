import 'package:flutter/material.dart';

class CheckInProvider extends ChangeNotifier {
  String? _selectedProject;
  String? _selectedGate;
  String? _workType;

  String? get selectedProject => _selectedProject;
  String? get selectedGate => _selectedGate;
  String? get workType => _workType;

  void setProject(String? value) {
    _selectedProject = value;
    notifyListeners();
  }

  void setGate(String? value) {
    _selectedGate = value;
    notifyListeners();
  }

  void setWorkType(String? value) {
    _workType = value;
    notifyListeners();
  }
}
