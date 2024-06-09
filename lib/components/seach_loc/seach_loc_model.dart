import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seach_loc_widget.dart' show SeachLocWidget;
import 'package:flutter/material.dart';

class SeachLocModel extends FlutterFlowModel<SeachLocWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for addresskeyword widget.
  FocusNode? addresskeywordFocusNode;
  TextEditingController? addresskeywordTextController;
  String? Function(BuildContext, String?)?
      addresskeywordTextControllerValidator;
  // Stores action output result for [Backend Call - API (foodpanda)] action in Button widget.
  ApiCallResponse? apiRes;
  // Stores action output result for [Backend Call - API (foodpanda get details)] action in Toast_01 widget.
  ApiCallResponse? locDetails;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addresskeywordFocusNode?.dispose();
    addresskeywordTextController?.dispose();
  }
}
