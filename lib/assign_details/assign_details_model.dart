import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assign_details_widget.dart' show AssignDetailsWidget;
import 'package:flutter/material.dart';

class AssignDetailsModel extends FlutterFlowModel<AssignDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TrackingRecord? trackingRef;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  RequestsRecord? reqRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
