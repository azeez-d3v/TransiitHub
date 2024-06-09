import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enter_code_widget.dart' show EnterCodeWidget;
import 'package:flutter/material.dart';

class EnterCodeModel extends FlutterFlowModel<EnterCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for codefield widget.
  FocusNode? codefieldFocusNode;
  TextEditingController? codefieldTextController;
  String? Function(BuildContext, String?)? codefieldTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  BookingsRecord? readdoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    codefieldFocusNode?.dispose();
    codefieldTextController?.dispose();
  }
}
