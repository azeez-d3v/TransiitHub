import '/flutter_flow/flutter_flow_util.dart';
import 'activity_widget.dart' show ActivityWidget;
import 'package:flutter/material.dart';

class ActivityModel extends FlutterFlowModel<ActivityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
