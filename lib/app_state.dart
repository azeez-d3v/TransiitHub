import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _originJson;
  dynamic get originJson => _originJson;
  set originJson(dynamic value) {
    _originJson = value;
  }

  dynamic _destJson;
  dynamic get destJson => _destJson;
  set destJson(dynamic value) {
    _destJson = value;
  }

  List<DocumentReference> _selectedUnit = [];
  List<DocumentReference> get selectedUnit => _selectedUnit;
  set selectedUnit(List<DocumentReference> value) {
    _selectedUnit = value;
  }

  void addToSelectedUnit(DocumentReference value) {
    _selectedUnit.add(value);
  }

  void removeFromSelectedUnit(DocumentReference value) {
    _selectedUnit.remove(value);
  }

  void removeAtIndexFromSelectedUnit(int index) {
    _selectedUnit.removeAt(index);
  }

  void updateSelectedUnitAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _selectedUnit[index] = updateFn(_selectedUnit[index]);
  }

  void insertAtIndexInSelectedUnit(int index, DocumentReference value) {
    _selectedUnit.insert(index, value);
  }

  bool _originIsActive = false;
  bool get originIsActive => _originIsActive;
  set originIsActive(bool value) {
    _originIsActive = value;
  }

  DateTime? _CallTime;
  DateTime? get CallTime => _CallTime;
  set CallTime(DateTime? value) {
    _CallTime = value;
  }

  DocumentReference? _bookingSelectedUnit;
  DocumentReference? get bookingSelectedUnit => _bookingSelectedUnit;
  set bookingSelectedUnit(DocumentReference? value) {
    _bookingSelectedUnit = value;
  }

  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
  }

  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
  }

  String _availableDate = '';
  String get availableDate => _availableDate;
  set availableDate(String value) {
    _availableDate = value;
  }

  DocumentReference? _driverDetails;
  DocumentReference? get driverDetails => _driverDetails;
  set driverDetails(DocumentReference? value) {
    _driverDetails = value;
  }
}
