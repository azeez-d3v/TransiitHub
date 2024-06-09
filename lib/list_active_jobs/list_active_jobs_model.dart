import '/flutter_flow/flutter_flow_util.dart';
import 'list_active_jobs_widget.dart' show ListActiveJobsWidget;
import 'package:flutter/material.dart';

class ListActiveJobsModel extends FlutterFlowModel<ListActiveJobsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
