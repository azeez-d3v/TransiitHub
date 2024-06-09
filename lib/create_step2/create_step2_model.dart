import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_step2_widget.dart' show CreateStep2Widget;
import 'package:flutter/material.dart';

class CreateStep2Model extends FlutterFlowModel<CreateStep2Widget> {
  ///  Local state fields for this page.

  int? initialVal = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  JobOrdersRecord? cretateJob;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
