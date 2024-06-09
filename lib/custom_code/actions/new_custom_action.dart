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

Future newCustomAction(JobOrdersRecord? param) async {
  // Extract the document IDs from the assignedTo from page parameter.
  List<String> documentIds = [];

  if (param?.assignedTo != null) {
    String assignedTo = param!.assignedTo! as String;
    RegExp exp = RegExp(r"(?<=documentId:)[\w-]+");
    Iterable<Match> matches = exp.allMatches(assignedTo);
    for (Match match in matches) {
      documentIds.add(match.group(0)!);
    }
  }
}
