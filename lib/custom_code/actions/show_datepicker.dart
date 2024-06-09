// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> showDatepicker(BuildContext context) async {
  // action that shows the date picker, but dont allow the selection of sundays and past dates
  DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.now().add(Duration(days: 365)),
    selectableDayPredicate: (DateTime date) {
      if (date.weekday == DateTime.sunday) {
        return false;
      }
      return date.isAfter(DateTime.now().subtract(Duration(days: 1)));
    },
  );

  if (selectedDate != null) {
    // Set the selected date to the FFState
    FFAppState().startDate = selectedDate;
    return selectedDate.toString();
  } else {
    return null;
  }
}
