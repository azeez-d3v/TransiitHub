import '/flutter_flow/flutter_flow_util.dart';
import 'create_step1_widget.dart' show CreateStep1Widget;
import 'package:flutter/material.dart';

class CreateStep1Model extends FlutterFlowModel<CreateStep1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
